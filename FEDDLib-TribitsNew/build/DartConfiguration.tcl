# This file is configured by CMake automatically as DartConfiguration.tcl
# If you choose not to use CMake, this file may be hand configured, by
# filling in the required variables.


# Configuration directories and files
SourceDirectory: /home/roeverf/opt/feddlib/FEDDLib-TribitsNew
BuildDirectory: /home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build

# Where to place the cost data store
CostDataFile: 

# Site is something like machine.domain, i.e. pragmatic.crd
Site: berta

# Build name is osname-revision-compiler, i.e. Linux-2.4.2-2smp-c++
BuildName: Linux-mpicxx

# Subprojects
LabelsForSubprojects: SimpleCxx;core

# Submission information
SubmitURL: https://my.cdash.org/submit.php?project=FEDDLib
SubmitInactivityTimeout: 

# Dashboard start time
NightlyStartTime: 04:00:00 UTC

# Commands for the build/test/submit cycle
ConfigureCommand: "/home/roeverf/opt/spack/opt/spack/linux-ubuntu20.04-skylake/gcc-9.4.0/cmake-3.24.3-sx6opfd3ocvet6dgmv76efo4kol7zufp/bin/cmake" "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew"
MakeCommand: /home/roeverf/opt/spack/opt/spack/linux-ubuntu20.04-skylake/gcc-9.4.0/cmake-3.24.3-sx6opfd3ocvet6dgmv76efo4kol7zufp/bin/cmake --build . --config "${CTEST_CONFIGURATION_TYPE}"
DefaultCTestConfigurationType: Release

# version control
UpdateVersionOnly: 

# CVS options
# Default is "-d -P -A"
CVSCommand: 
CVSUpdateOptions: 

# Subversion options
SVNCommand: 
SVNOptions: 
SVNUpdateOptions: 

# Git options
GITCommand: 
GITInitSubmodules: 
GITUpdateOptions: 
GITUpdateCustom: 

# Perforce options
P4Command: 
P4Client: 
P4Options: 
P4UpdateOptions: 
P4UpdateCustom: 

# Generic update command
UpdateCommand: 
UpdateOptions: 
UpdateType: 

# Compiler info
Compiler: /usr/bin/mpicxx
CompilerVersion: 9.4.0

# Dynamic analysis (MemCheck)
PurifyCommand: 
ValgrindCommand: 
ValgrindCommandOptions: 
DrMemoryCommand: 
DrMemoryCommandOptions: 
CudaSanitizerCommand: 
CudaSanitizerCommandOptions: 
MemoryCheckType: 
MemoryCheckSanitizerOptions: 
MemoryCheckCommand: MEMORYCHECK_COMMAND-NOTFOUND
MemoryCheckCommandOptions: 
MemoryCheckSuppressionFile: 

# Coverage
CoverageCommand: /usr/bin/gcov
CoverageExtraFlags: -l

# Testing options
# TimeOut is the amount of time in seconds to wait for processes
# to complete during testing.  After TimeOut seconds, the
# process will be summarily terminated.
# Currently set to 25 minutes
TimeOut: 1500

# During parallel testing CTest will not start a new test if doing
# so would cause the system load to exceed this value.
TestLoad: 

UseLaunchers: 
CurlOptions: 
# warning, if you add new options here that have to do with submit,
# you have to update cmCTestSubmitCommand.cxx

# For CTest submissions that timeout, these options
# specify behavior for retrying the submission
CTestSubmitRetryDelay: 5
CTestSubmitRetryCount: 3
