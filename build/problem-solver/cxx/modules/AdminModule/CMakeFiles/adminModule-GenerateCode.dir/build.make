# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/igor/labs/mois/kursach2sem/ostis-geography

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/igor/labs/mois/kursach2sem/ostis-geography/build

# Utility rule file for adminModule-GenerateCode.

# Include the progress variables for this target.
include problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/progress.make

problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode: problem-solver/cxx/modules/AdminModule/adminModule.gen_cache


problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/AdminModule.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/agent/GetAdminBuildingDistrict.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/agent/GetAdminBuildingRegion.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/generated/AdminKeynodes.generated.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/generated/AdminModule.generated.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/generated/GetAdminBuildingDistrict.generated.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/generated/GetAdminBuildingRegion.generated.hpp
problem-solver/cxx/modules/AdminModule/adminModule.gen_cache: ../problem-solver/cxx/modules/AdminModule/keynodes/AdminKeynodes.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/igor/labs/mois/kursach2sem/ostis-geography/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating adminModule.gen_cache"
	cd /home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/AdminModule && ../../../../../bin/sc-code-generator --target adminModule --source /home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/modules/AdminModule --output /home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/modules/AdminModule/generated --build_dir /home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/AdminModule --flags '-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/modules/AdminModule;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/sc-machine/sc-memory;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/sc-machine/sc-kpm;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/sc-machine/sc-tools;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/modules/AdminModule;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/sc-machine/sc-memory;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/sc-machine/sc-kpm;-I/home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/sc-machine/sc-tools;-I/usr/lib/llvm-10/lib/clang/10.0.0/include/' --cache

adminModule-GenerateCode: problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode
adminModule-GenerateCode: problem-solver/cxx/modules/AdminModule/adminModule.gen_cache
adminModule-GenerateCode: problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/build.make

.PHONY : adminModule-GenerateCode

# Rule to build all files generated by this target.
problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/build: adminModule-GenerateCode

.PHONY : problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/build

problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/clean:
	cd /home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/AdminModule && $(CMAKE_COMMAND) -P CMakeFiles/adminModule-GenerateCode.dir/cmake_clean.cmake
.PHONY : problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/clean

problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/depend:
	cd /home/igor/labs/mois/kursach2sem/ostis-geography/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/igor/labs/mois/kursach2sem/ostis-geography /home/igor/labs/mois/kursach2sem/ostis-geography/problem-solver/cxx/modules/AdminModule /home/igor/labs/mois/kursach2sem/ostis-geography/build /home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/AdminModule /home/igor/labs/mois/kursach2sem/ostis-geography/build/problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : problem-solver/cxx/modules/AdminModule/CMakeFiles/adminModule-GenerateCode.dir/depend
