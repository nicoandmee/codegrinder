package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"time"

	. "github.com/russross/codegrinder/types"
	"github.com/spf13/cobra"
)

func CommandSolve(cmd *cobra.Command, args []string) {
	mustLoadConfig(cmd)
	now := time.Now()

	if len(args) != 0 {
		cmd.Help()
		os.Exit(1)
	}

	// get the user ID
	user := new(User)
	mustGetObject("/users/me", nil, user)
	if !user.Author && !user.Admin {
		log.Fatalf("you must be an author or admin to use this command")
	}

	_, problem, _, commit, _, problemDir := gatherStudent(now, ".")
	step := new(ProblemStep)
	mustGetObject(fmt.Sprintf("/problems/%d/steps/%d", problem.ID, commit.Step), nil, step)

	if step.Solution == nil || len(step.Solution) == 0 {
		log.Fatalf("no solution files found")
	}
	files := make(map[string][]byte)
	for name, contents := range step.Solution {
		files[filepath.FromSlash(name)] = contents
	}
	updateFiles(problemDir, files, nil, true)
}
