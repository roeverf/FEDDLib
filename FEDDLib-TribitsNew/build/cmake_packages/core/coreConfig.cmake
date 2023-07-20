# @HEADER
# ************************************************************************
#
#            TriBITS: Tribal Build, Integrate, and Test System
#                    Copyright 2013 Sandia Corporation
#
#
# Under the terms of Contract DE-AC04-94AL85000 with Sandia Corporation,
# the U.S. Government retains certain rights in this software.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
#
# 3. Neither the name of the Corporation nor the names of the
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY SANDIA CORPORATION "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL SANDIA CORPORATION OR THE
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# ************************************************************************
# @HEADER

##############################################################################
#
# CMake variable for use by FEDDLib/core clients.
#
# Do not edit: This file was generated automatically by CMake.
#
##############################################################################



## ---------------------------------------------------------------------------
## Compilers used by FEDDLib/core build
## ---------------------------------------------------------------------------

SET(core_CXX_COMPILER "/usr/bin/mpicxx")

SET(core_C_COMPILER "/usr/bin/mpicc")

SET(core_FORTRAN_COMPILER "/usr/bin/mpif90")


## ---------------------------------------------------------------------------
## Compiler flags used by FEDDLib/core build
## ---------------------------------------------------------------------------

## Give the build type
SET(core_CMAKE_BUILD_TYPE "RELEASE")

## Set compiler flags, including those determined by build type
SET(core_CXX_FLAGS " -pedantic -Wall -Wno-long-long -Wwrite-strings -O3 -DNDEBUG")

SET(core_C_FLAGS " -pedantic -Wall -Wno-long-long -std=c99 -O3 -DNDEBUG")

SET(core_FORTRAN_FLAGS " -O3")

## Extra link flags (e.g., specification of fortran libraries)
SET(core_EXTRA_LD_FLAGS "")

## This is the command-line entry used for setting rpaths. In a build
## with static libraries it will be empty.
SET(core_SHARED_LIB_RPATH_COMMAND "")
SET(core_BUILD_SHARED_LIBS "FALSE")

SET(core_LINKER /usr/bin/ld)
SET(core_AR /usr/bin/ar)

## ---------------------------------------------------------------------------
## Set library specifications and paths
## ---------------------------------------------------------------------------

## List of package include dirs
SET(core_INCLUDE_DIRS "")

## List of package library paths
SET(core_LIBRARY_DIRS "")

## List of package libraries
SET(core_LIBRARIES "")

## Specification of directories for TPL headers
SET(core_TPL_INCLUDE_DIRS "")

## Specification of directories for TPL libraries
SET(core_TPL_LIBRARY_DIRS "")

## List of required TPLs
SET(core_TPL_LIBRARIES "")

## ---------------------------------------------------------------------------
## MPI specific variables
##   These variables are provided to make it easier to get the mpi libraries
##   and includes on systems that do not use the mpi wrappers for compiling
## ---------------------------------------------------------------------------

SET(core_MPI_LIBRARIES "")
SET(core_MPI_LIBRARY_DIRS "")
SET(core_MPI_INCLUDE_DIRS "")
SET(core_MPI_EXEC "/usr/bin/mpiexec")
SET(core_MPI_EXEC_MAX_NUMPROCS "4")
SET(core_MPI_EXEC_NUMPROCS_FLAG "-np")

## ---------------------------------------------------------------------------
## Set useful general variables
## ---------------------------------------------------------------------------

## The packages enabled for this project
SET(core_PACKAGE_LIST "")

## The TPLs enabled for this project
SET(core_TPL_LIST "")

# Enables/Disables for upstream package dependencies
set(core_ENABLE_MPI ON)
set(core_ENABLE_Trilinos ON)

# Exported cache variables

# Include configuration of dependent packages
if (NOT TARGET MPI::all_libs)
  include("${CMAKE_CURRENT_LIST_DIR}/../../external_packages/MPI/MPIConfig.cmake")
endif()
if (NOT TARGET Trilinos::all_libs)
  include("${CMAKE_CURRENT_LIST_DIR}/../../external_packages/Trilinos/TrilinosConfig.cmake")
endif()

# Import core targets
include("/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/cmake_packages/core/coreTargets.cmake")

# Standard TriBITS-compliant external package variables
set(core_IS_TRIBITS_COMPLIANT TRUE)
set(core_TRIBITS_COMPLIANT_PACKAGE_CONFIG_FILE "${CMAKE_CURRENT_LIST_FILE}")
set(core_TRIBITS_COMPLIANT_PACKAGE_CONFIG_FILE_DIR "${CMAKE_CURRENT_LIST_DIR}")

