# convert unit test output to xunit xml file

import re
import sys
import os.path
import xml.etree.ElementTree as ET

completeTest = re.compile(r'% PL-Unit: (\S+) \.* done$')
errorTest = re.compile(r'ERROR: (\S+):(\d+):\d+: (.*)$')
beginningOfTest = re.compile(r'% PL-Unit: (\S+) \.*$')
errorInsideTest = re.compile(r'ERROR: (\S+):\d+:$')
endOfTest = re.compile(r'\.* done$')

suites = ET.Element('testsuites')
suite = ET.SubElement(suites, 'testsuite')
passed, failed, errors = 0, 0, 0
case, err, details = None, None, ''
for line in sys.stdin:
    # outside a test result?
    if case is None:
        if groups := errorTest.match(line):
            errors += 1
            partial = os.path.relpath(groups[1])
            case = ET.SubElement(suite, 'testcase')
            case.set('name', f'Compiler error in {partial} line {groups[2]}')
            case.set('status', 'error')
            err = ET.SubElement(case, 'error')
            err.text = groups[3]
            case, err, details = None, None, ''
            break

        if groups := completeTest.match(line):
            passed += 1
            case = ET.SubElement(suite, 'testcase')
            case.set('name', groups[1])
            case, err, details = None, None, ''
            continue

        if groups := beginningOfTest.match(line):
            passed += 1
            case = ET.SubElement(suite, 'testcase')
            case.set('name', groups[1])
            details = line + '\n'
            continue

    else:
        details += line + '\n'

        if groups := errorInsideTest.match(line):
            partial = os.path.relpath(groups[1])
            if err is None:
                case.set('status', 'failed')
                passed -= 1
                failed += 1
                err = ET.SubElement(case, 'failure')
            continue

        if groups := endOfTest.match(line):
            if err is not None:
                err.text = details
            case, err, details = None, None, ''
            continue

suite.set('tests', str(passed + failed + errors))
suites.set('tests', str(passed + failed + errors))
if failed > 0:
    suite.set('failures', str(failed))
    suites.set('failures', str(failed))
if errors > 0:
    suite.set('errors', str(errors))
    suites.set('errors', str(errors))
ET.ElementTree(suites).write('test_detail.xml', encoding='utf-8')
