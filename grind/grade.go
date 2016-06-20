package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/fatih/color"
	. "github.com/russross/codegrinder/types"
	"github.com/spf13/cobra"
)

func CommandGrade(cmd *cobra.Command, args []string) {
	mustLoadConfig()
	now := time.Now()

	// find the directory
	dir := ""
	switch len(args) {
	case 0:
		dir = "."
	case 1:
		dir = args[0]
	default:
		cmd.Help()
		return
	}

	problem, _, commit, dotfile := gather(now, dir)
	commit.Action = "grade"
	commit.Note = "grading from grind tool"
	unsigned := &CommitBundle{Commit: commit}

	// send the commit bundle to the server
	signed := new(CommitBundle)
	mustPostObject(fmt.Sprintf("/assignments/%d/commit_bundles/unsigned", commit.AssignmentID), nil, unsigned, signed)

	// TODO: get a daycare referral

	// send it to the daycare for grading
	log.Printf("submitting %s step %d for grading", problem.Unique, commit.Step)
	graded := mustConfirmCommitBundle(signed, nil)

	// save the commit with report card
	saved := new(CommitBundle)
	mustPostObject(fmt.Sprintf("/assignments/%d/commit_bundles/signed", commit.AssignmentID), nil, graded, saved)
	commit = saved.Commit

	if commit.ReportCard != nil && commit.ReportCard.Passed && commit.Score == 1.0 {
		log.Printf("step %d passed", commit.Step)

		// advance to the next step
		oldStep, newStep := new(ProblemStep), new(ProblemStep)
		if !getObject(fmt.Sprintf("/problems/%d/steps/%d", problem.ID, commit.Step+1), nil, newStep) {
			log.Printf("you have completed all steps for this problem")
			return
		}
		mustGetObject(fmt.Sprintf("/problems/%d/steps/%d", problem.ID, commit.Step), nil, oldStep)
		log.Printf("moving to step %d", newStep.Step)

		// delete all the files from the old step
		for name := range oldStep.Files {
			if len(strings.Split(name, "/")) == 1 {
				continue
			}
			path := filepath.Join(dir, name)
			log.Printf("deleting %s from old step", path)
			if err := os.Remove(path); err != nil {
				log.Fatalf("error deleting %s: %v", path, err)
			}
			dirpath := filepath.Dir(path)
			if err := os.Remove(dirpath); err != nil {
				// do nothing; the directory probably has other files left
			}
		}

		// write files from new step and update the whitelist
		info := dotfile.Problems[problem.Unique]
		for name, contents := range newStep.Files {
			path := filepath.Join(dir, name)
			log.Printf("writing %s from new step", path)
			if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
				log.Fatalf("error creating directory %s: %v", filepath.Dir(path), err)
			}
			if err := ioutil.WriteFile(path, []byte(contents), 0644); err != nil {
				log.Fatalf("error saving file %s: %v", path, err)
			}

			// add the file to the whitelist as well if it is in the root directory
			if len(strings.Split(name, "/")) == 1 {
				info.Whitelist[name] = true
			}
		}

		// save the updated dotfile with whitelist updates and new step number
		info.Step++
		contents, err := json.MarshalIndent(dotfile, "", "    ")
		if err != nil {
			log.Fatalf("JSON error encoding %s: %v", dotfile.Path, err)
		}
		contents = append(contents, '\n')
		if err := ioutil.WriteFile(dotfile.Path, contents, 0644); err != nil {
			log.Fatalf("error saving file %s: %v", dotfile.Path, err)
		}
	} else {
		// solution failed
		log.Printf("  solution for step %d failed", commit.Step)
		if commit.ReportCard != nil {
			log.Printf("  ReportCard: %s", commit.ReportCard.Note)
		}

		// play the transcript
		for _, event := range commit.Transcript {
			switch event.Event {
			case "exec":
				color.Cyan("$ %s\n", strings.Join(event.ExecCommand, " "))
			case "stdin":
				color.Yellow("%s", event.StreamData)
			case "stdout":
				color.White("%s", event.StreamData)
			case "stderr":
				color.Red("%s", event.StreamData)
			case "exit":
				color.Cyan("%s\n", event.ExitStatus)
			case "error":
				color.Red("Error: %s\n", event.Error)
			}
		}
	}
}