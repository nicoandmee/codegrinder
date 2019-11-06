INSERT INTO problem_types (name, image) VALUES ('armv6asm', 'codegrinder/armv6asm');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv6asm', 'grade', 'Grade', 'Grading‥', false, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv6asm', 'test', 'Test', 'Testing‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv6asm', 'valgrind', 'Valgrind', 'Running valgrind‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv6asm', 'debug', 'Debug', 'Running gdb‥', true, 60, 1800, 300, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv6asm', 'run', 'Run', 'Running‥', true, 60, 1800, 300, 100, 10, 128, 20);

INSERT INTO problem_types (name, image) VALUES ('armv8asm', 'codegrinder/armv8asm');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv8asm', 'grade', 'Grade', 'Grading‥', false, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv8asm', 'test', 'Test', 'Testing‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv8asm', 'valgrind', 'Valgrind', 'Running valgrind‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv8asm', 'debug', 'Debug', 'Running gdb‥', true, 60, 1800, 300, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('armv8asm', 'run', 'Run', 'Running‥', true, 60, 1800, 300, 100, 10, 128, 20);

INSERT INTO problem_types (name, image) VALUES ('arm64inout', 'codegrinder/armv8asm');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('arm64inout', 'grade', 'Grade', 'Grading‥', false, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('arm64inout', 'test', 'Test', 'Testing‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('arm64inout', 'valgrind', 'Valgrind', 'Running valgrind‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('arm64inout', 'debug', 'Debug', 'Running gdb‥', true, 60, 1800, 300, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('arm64inout', 'run', 'Run', 'Running‥', true, 60, 1800, 300, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('arm64inout', 'step', 'Step', 'Stepping‥', true, 60, 1800, 300, 100, 10, 128, 20);

INSERT INTO problem_types (name, image) VALUES ('prologunittest', 'codegrinder/prolog');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('prologunittest', 'grade', 'Grade', 'Grading‥', false, 10, 20, 20, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('prologunittest', 'test', 'Test', 'Testing‥', true, 10, 20, 20, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('prologunittest', 'run', 'Run', 'Running‥', true, 10, 1800, 300, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('prologunittest', 'shell', 'Shell', 'Running Prolog shell‥', true, 10, 1800, 300, 100, 10, 128, 20);

INSERT INTO problem_types (name, image) VALUES ('python3unittest', 'codegrinder/python');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'grade', 'Grade', 'Grading‥', false, 60, 120, 120, 10, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'test', 'Test', 'Testing‥', true, 60, 120, 120, 10, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'run', 'Run', 'Running‥', true, 60, 1800, 300, 10, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'debug', 'Debug', 'Running debugger‥', true, 60, 1800, 300, 10, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'shell', 'Shell', 'Running Python shell‥', true, 60, 1800, 300, 10, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'stylecheck', 'Style check', 'Checking pep8 style‥', true, 60, 120, 120, 10, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3unittest', 'stylefix', 'Style fix', 'Fixing pep8 style‥', true, 60, 120, 120, 10, 10, 64, 30);

INSERT INTO problem_types (name, image) VALUES ('python3inout', 'codegrinder/python');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'grade', 'Grade', 'Grading‥', false, 60, 120, 120, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'test', 'Test', 'Testing‥', true, 60, 120, 120, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'step', 'Step', 'Stepping‥', true, 60, 240, 240, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'run', 'Run', 'Running‥', true, 60, 1800, 300, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'debug', 'Debug', 'Running debugger‥', true, 60, 1800, 300, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'shell', 'Shell', 'Running Python shell‥', true, 60, 1800, 300, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'stylecheck', 'Style check', 'Checking pep8 style‥', true, 60, 120, 120, 50, 10, 64, 30);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('python3inout', 'stylefix', 'Style fix', 'Fixing pep8 style‥', true, 60, 120, 120, 50, 10, 64, 30);

INSERT INTO problem_types (name, image) VALUES ('standardmlunittest', 'codegrinder/standardml');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlunittest', 'grade', 'Grade', 'Grading‥', false, 10, 20, 20, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlunittest', 'test', 'Test', 'Testing‥', true, 10, 20, 20, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlunittest', 'run', 'Run', 'Running‥', true, 10, 1800, 300, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlunittest', 'shell', 'Shell', 'Running PolyML shell‥', true, 10, 1800, 300, 100, 10, 256, 200);

INSERT INTO problem_types (name, image) VALUES ('standardmlinout', 'codegrinder/standardml');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlinout', 'grade', 'Grade', 'Grading‥', false, 10, 20, 20, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlinout', 'test', 'Test', 'Testing‥', true, 10, 20, 20, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlinout', 'run', 'Run', 'Running‥', true, 10, 1800, 300, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlinout', 'step', 'Step', 'Stepping‥', true, 10, 1800, 300, 100, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('standardmlinout', 'shell', 'Shell', 'Running PolyML shell‥', true, 10, 1800, 300, 100, 10, 256, 200);

INSERT INTO problem_types (name, image) VALUES ('gounittest', 'codegrinder/go');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('gounittest', 'grade', 'Grade', 'Grading‥', false, 10, 20, 20, 200, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('gounittest', 'test', 'Test', 'Testing‥', true, 10, 20, 20, 200, 10, 256, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('gounittest', 'run', 'Run', 'Running‥', true, 10, 1800, 300, 200, 10, 256, 200);

INSERT INTO problem_types (name, image) VALUES ('cppunittest', 'codegrinder/cpp');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('cppunittest', 'grade', 'Grade', 'Grading‥', false, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('cppunittest', 'test', 'Test', 'Testing‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('cppunittest', 'valgrind', 'Valgrind', 'Running valgrind‥', true, 60, 120, 120, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('cppunittest', 'debug', 'Debug', 'Running gdb‥', true, 60, 1800, 300, 100, 10, 128, 20);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('cppunittest', 'run', 'Run', 'Running‥', true, 60, 1800, 300, 100, 10, 128, 20);

INSERT INTO problem_types (name, image) VALUES ('nand2tetris', 'codegrinder/nand2tetris');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('nand2tetris', 'grade', 'Grade', 'Grading‥', false, 20, 20, 20, 100, 10, 1024, 200);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('nand2tetris', 'test', 'Test', 'Testing‥', true, 20, 20, 20, 100, 10, 1024, 200);

INSERT INTO problem_types (name, image) VALUES ('forthinout', 'codegrinder/forth');
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('forthinout', 'grade', 'Grade', 'Grading‥', false, 10, 20, 20, 100, 10, 64, 50);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('forthinout', 'test', 'Test', 'Testing‥', true, 10, 20, 20, 100, 10, 64, 50);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('forthinout', 'run', 'Run', 'Running‥', true, 10, 1800, 300, 100, 10, 64, 50);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('forthinout', 'step', 'Step', 'Stepping‥', true, 10, 1800, 300, 100, 10, 64, 50);
INSERT INTO problem_type_actions (problem_type, action, button, message, interactive, max_cpu, max_session, max_timeout, max_fd, max_file_size, max_memory, max_threads) VALUES ('forthinout', 'shell', 'Shell', 'Running gforth shell‥', true, 10, 1800, 300, 100, 10, 64, 50);
