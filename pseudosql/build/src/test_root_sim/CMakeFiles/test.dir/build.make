# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/simoneb/experiments/Actors/pseudosql

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/simoneb/experiments/Actors/pseudosql/build

# Include any dependencies generated for this target.
include src/test_root_sim/CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/test_root_sim/CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/test_root_sim/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include src/test_root_sim/CMakeFiles/test.dir/flags.make

src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.o: src/test_root_sim/CMakeFiles/test.dir/flags.make
src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.o: /home/simoneb/experiments/Actors/pseudosql/src/test_root_sim/test_root_sim2.c
src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.o: src/test_root_sim/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/simoneb/experiments/Actors/pseudosql/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.o"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.o -MF CMakeFiles/test.dir/test_root_sim2.c.o.d -o CMakeFiles/test.dir/test_root_sim2.c.o -c /home/simoneb/experiments/Actors/pseudosql/src/test_root_sim/test_root_sim2.c

src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test.dir/test_root_sim2.c.i"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/simoneb/experiments/Actors/pseudosql/src/test_root_sim/test_root_sim2.c > CMakeFiles/test.dir/test_root_sim2.c.i

src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test.dir/test_root_sim2.c.s"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/simoneb/experiments/Actors/pseudosql/src/test_root_sim/test_root_sim2.c -o CMakeFiles/test.dir/test_root_sim2.c.s

src/test_root_sim/CMakeFiles/test.dir/__/utils.c.o: src/test_root_sim/CMakeFiles/test.dir/flags.make
src/test_root_sim/CMakeFiles/test.dir/__/utils.c.o: /home/simoneb/experiments/Actors/pseudosql/src/utils.c
src/test_root_sim/CMakeFiles/test.dir/__/utils.c.o: src/test_root_sim/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/simoneb/experiments/Actors/pseudosql/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/test_root_sim/CMakeFiles/test.dir/__/utils.c.o"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/test_root_sim/CMakeFiles/test.dir/__/utils.c.o -MF CMakeFiles/test.dir/__/utils.c.o.d -o CMakeFiles/test.dir/__/utils.c.o -c /home/simoneb/experiments/Actors/pseudosql/src/utils.c

src/test_root_sim/CMakeFiles/test.dir/__/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test.dir/__/utils.c.i"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/simoneb/experiments/Actors/pseudosql/src/utils.c > CMakeFiles/test.dir/__/utils.c.i

src/test_root_sim/CMakeFiles/test.dir/__/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test.dir/__/utils.c.s"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/simoneb/experiments/Actors/pseudosql/src/utils.c -o CMakeFiles/test.dir/__/utils.c.s

src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.o: src/test_root_sim/CMakeFiles/test.dir/flags.make
src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.o: /home/simoneb/experiments/Actors/pseudosql/src/condition_parser.c
src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.o: src/test_root_sim/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/simoneb/experiments/Actors/pseudosql/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.o"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.o -MF CMakeFiles/test.dir/__/condition_parser.c.o.d -o CMakeFiles/test.dir/__/condition_parser.c.o -c /home/simoneb/experiments/Actors/pseudosql/src/condition_parser.c

src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test.dir/__/condition_parser.c.i"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/simoneb/experiments/Actors/pseudosql/src/condition_parser.c > CMakeFiles/test.dir/__/condition_parser.c.i

src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test.dir/__/condition_parser.c.s"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/simoneb/experiments/Actors/pseudosql/src/condition_parser.c -o CMakeFiles/test.dir/__/condition_parser.c.s

src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.o: src/test_root_sim/CMakeFiles/test.dir/flags.make
src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.o: /home/simoneb/experiments/Actors/pseudosql/src/sql_operations.c
src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.o: src/test_root_sim/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/simoneb/experiments/Actors/pseudosql/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.o"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.o -MF CMakeFiles/test.dir/__/sql_operations.c.o.d -o CMakeFiles/test.dir/__/sql_operations.c.o -c /home/simoneb/experiments/Actors/pseudosql/src/sql_operations.c

src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test.dir/__/sql_operations.c.i"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/simoneb/experiments/Actors/pseudosql/src/sql_operations.c > CMakeFiles/test.dir/__/sql_operations.c.i

src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test.dir/__/sql_operations.c.s"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/simoneb/experiments/Actors/pseudosql/src/sql_operations.c -o CMakeFiles/test.dir/__/sql_operations.c.s

src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.o: src/test_root_sim/CMakeFiles/test.dir/flags.make
src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.o: /home/simoneb/experiments/Actors/pseudosql/src/rootsim_operations.c
src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.o: src/test_root_sim/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/simoneb/experiments/Actors/pseudosql/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.o"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.o -MF CMakeFiles/test.dir/__/rootsim_operations.c.o.d -o CMakeFiles/test.dir/__/rootsim_operations.c.o -c /home/simoneb/experiments/Actors/pseudosql/src/rootsim_operations.c

src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test.dir/__/rootsim_operations.c.i"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/simoneb/experiments/Actors/pseudosql/src/rootsim_operations.c > CMakeFiles/test.dir/__/rootsim_operations.c.i

src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test.dir/__/rootsim_operations.c.s"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/simoneb/experiments/Actors/pseudosql/src/rootsim_operations.c -o CMakeFiles/test.dir/__/rootsim_operations.c.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test_root_sim2.c.o" \
"CMakeFiles/test.dir/__/utils.c.o" \
"CMakeFiles/test.dir/__/condition_parser.c.o" \
"CMakeFiles/test.dir/__/sql_operations.c.o" \
"CMakeFiles/test.dir/__/rootsim_operations.c.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/test_root_sim2.c.o
src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/__/utils.c.o
src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/__/condition_parser.c.o
src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/__/sql_operations.c.o
src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/__/rootsim_operations.c.o
src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/build.make
src/test_root_sim/test: /usr/local/lib/librscore.a
src/test_root_sim/test: /usr/local/lib/librstopology.a
src/test_root_sim/test: /usr/lib/x86_64-linux-gnu/mpich/lib/libmpich.so
src/test_root_sim/test: src/test_root_sim/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/simoneb/experiments/Actors/pseudosql/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable test"
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test_root_sim/CMakeFiles/test.dir/build: src/test_root_sim/test
.PHONY : src/test_root_sim/CMakeFiles/test.dir/build

src/test_root_sim/CMakeFiles/test.dir/clean:
	cd /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : src/test_root_sim/CMakeFiles/test.dir/clean

src/test_root_sim/CMakeFiles/test.dir/depend:
	cd /home/simoneb/experiments/Actors/pseudosql/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/simoneb/experiments/Actors/pseudosql /home/simoneb/experiments/Actors/pseudosql/src/test_root_sim /home/simoneb/experiments/Actors/pseudosql/build /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim /home/simoneb/experiments/Actors/pseudosql/build/src/test_root_sim/CMakeFiles/test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/test_root_sim/CMakeFiles/test.dir/depend
