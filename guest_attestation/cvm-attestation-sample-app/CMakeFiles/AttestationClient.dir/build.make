# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app

# Include any dependencies generated for this target.
include CMakeFiles/AttestationClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AttestationClient.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AttestationClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AttestationClient.dir/flags.make

CMakeFiles/AttestationClient.dir/main.cpp.o: CMakeFiles/AttestationClient.dir/flags.make
CMakeFiles/AttestationClient.dir/main.cpp.o: main.cpp
CMakeFiles/AttestationClient.dir/main.cpp.o: CMakeFiles/AttestationClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AttestationClient.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AttestationClient.dir/main.cpp.o -MF CMakeFiles/AttestationClient.dir/main.cpp.o.d -o CMakeFiles/AttestationClient.dir/main.cpp.o -c /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/main.cpp

CMakeFiles/AttestationClient.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AttestationClient.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/main.cpp > CMakeFiles/AttestationClient.dir/main.cpp.i

CMakeFiles/AttestationClient.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AttestationClient.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/main.cpp -o CMakeFiles/AttestationClient.dir/main.cpp.s

CMakeFiles/AttestationClient.dir/Utils.cpp.o: CMakeFiles/AttestationClient.dir/flags.make
CMakeFiles/AttestationClient.dir/Utils.cpp.o: Utils.cpp
CMakeFiles/AttestationClient.dir/Utils.cpp.o: CMakeFiles/AttestationClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AttestationClient.dir/Utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AttestationClient.dir/Utils.cpp.o -MF CMakeFiles/AttestationClient.dir/Utils.cpp.o.d -o CMakeFiles/AttestationClient.dir/Utils.cpp.o -c /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/Utils.cpp

CMakeFiles/AttestationClient.dir/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AttestationClient.dir/Utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/Utils.cpp > CMakeFiles/AttestationClient.dir/Utils.cpp.i

CMakeFiles/AttestationClient.dir/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AttestationClient.dir/Utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/Utils.cpp -o CMakeFiles/AttestationClient.dir/Utils.cpp.s

CMakeFiles/AttestationClient.dir/Logger.cpp.o: CMakeFiles/AttestationClient.dir/flags.make
CMakeFiles/AttestationClient.dir/Logger.cpp.o: Logger.cpp
CMakeFiles/AttestationClient.dir/Logger.cpp.o: CMakeFiles/AttestationClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AttestationClient.dir/Logger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AttestationClient.dir/Logger.cpp.o -MF CMakeFiles/AttestationClient.dir/Logger.cpp.o.d -o CMakeFiles/AttestationClient.dir/Logger.cpp.o -c /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/Logger.cpp

CMakeFiles/AttestationClient.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AttestationClient.dir/Logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/Logger.cpp > CMakeFiles/AttestationClient.dir/Logger.cpp.i

CMakeFiles/AttestationClient.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AttestationClient.dir/Logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/Logger.cpp -o CMakeFiles/AttestationClient.dir/Logger.cpp.s

# Object files for target AttestationClient
AttestationClient_OBJECTS = \
"CMakeFiles/AttestationClient.dir/main.cpp.o" \
"CMakeFiles/AttestationClient.dir/Utils.cpp.o" \
"CMakeFiles/AttestationClient.dir/Logger.cpp.o"

# External object files for target AttestationClient
AttestationClient_EXTERNAL_OBJECTS =

AttestationClient: CMakeFiles/AttestationClient.dir/main.cpp.o
AttestationClient: CMakeFiles/AttestationClient.dir/Utils.cpp.o
AttestationClient: CMakeFiles/AttestationClient.dir/Logger.cpp.o
AttestationClient: CMakeFiles/AttestationClient.dir/build.make
AttestationClient: CMakeFiles/AttestationClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable AttestationClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AttestationClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AttestationClient.dir/build: AttestationClient
.PHONY : CMakeFiles/AttestationClient.dir/build

CMakeFiles/AttestationClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AttestationClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AttestationClient.dir/clean

CMakeFiles/AttestationClient.dir/depend:
	cd /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app /home/ubuntu/sgx-enclave-manager/guest_attestation/cvm-attestation-sample-app/CMakeFiles/AttestationClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AttestationClient.dir/depend

