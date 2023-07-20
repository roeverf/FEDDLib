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
# CMake variable for use by FEDDLib/SimpleCxx clients.
#
# Do not edit: This file was generated automatically by CMake.
#
##############################################################################



## ---------------------------------------------------------------------------
## Compilers used by FEDDLib/SimpleCxx build
## ---------------------------------------------------------------------------

SET(SimpleCxx_CXX_COMPILER "/usr/bin/mpicxx")

SET(SimpleCxx_C_COMPILER "/usr/bin/mpicc")

SET(SimpleCxx_FORTRAN_COMPILER "/usr/bin/mpif90")


## ---------------------------------------------------------------------------
## Compiler flags used by FEDDLib/SimpleCxx build
## ---------------------------------------------------------------------------

## Give the build type
SET(SimpleCxx_CMAKE_BUILD_TYPE "RELEASE")

## Set compiler flags, including those determined by build type
SET(SimpleCxx_CXX_FLAGS " -O3 -DNDEBUG")

SET(SimpleCxx_C_FLAGS "  -pedantic -Wall -Wno-long-long -std=c99 -O3 -DNDEBUG")

SET(SimpleCxx_FORTRAN_FLAGS " -O3")

## Extra link flags (e.g., specification of fortran libraries)
SET(SimpleCxx_EXTRA_LD_FLAGS "")

## This is the command-line entry used for setting rpaths. In a build
## with static libraries it will be empty.
SET(SimpleCxx_SHARED_LIB_RPATH_COMMAND "")
SET(SimpleCxx_BUILD_SHARED_LIBS "FALSE")

SET(SimpleCxx_LINKER /usr/bin/ld)
SET(SimpleCxx_AR /usr/bin/ar)

## ---------------------------------------------------------------------------
## Set library specifications and paths
## ---------------------------------------------------------------------------

## List of package include dirs
SET(SimpleCxx_INCLUDE_DIRS "")

## List of package library paths
SET(SimpleCxx_LIBRARY_DIRS "")

## List of package libraries
SET(SimpleCxx_LIBRARIES "")

## Specification of directories for TPL headers
SET(SimpleCxx_TPL_INCLUDE_DIRS "")

## Specification of directories for TPL libraries
SET(SimpleCxx_TPL_LIBRARY_DIRS "")

## List of required TPLs
SET(SimpleCxx_TPL_LIBRARIES "")

## ---------------------------------------------------------------------------
## MPI specific variables
##   These variables are provided to make it easier to get the mpi libraries
##   and includes on systems that do not use the mpi wrappers for compiling
## ---------------------------------------------------------------------------

SET(SimpleCxx_MPI_LIBRARIES "")
SET(SimpleCxx_MPI_LIBRARY_DIRS "")
SET(SimpleCxx_MPI_INCLUDE_DIRS "")
SET(SimpleCxx_MPI_EXEC "/usr/bin/mpiexec")
SET(SimpleCxx_MPI_EXEC_MAX_NUMPROCS "4")
SET(SimpleCxx_MPI_EXEC_NUMPROCS_FLAG "-np")

## ---------------------------------------------------------------------------
## Set useful general variables
## ---------------------------------------------------------------------------

## The packages enabled for this project
SET(SimpleCxx_PACKAGE_LIST "")

## The TPLs enabled for this project
SET(SimpleCxx_TPL_LIST "")

# Enables/Disables for upstream package dependencies
set(SimpleCxx_ENABLE_HeaderOnlyTpl ON)
set(SimpleCxx_ENABLE_SimpleTpl OFF)
set(SimpleCxx_ENABLE_MPI ON)

# Exported cache variables
set(HAVE_SIMPLECXX___INT64 "")
set(SimpleCxx_ENABLE_DEBUG "OFF")
set(HAVE_SIMPLECXX_DEBUG "OFF")
set(EXPECTED_SIMPLECXX_AND_DEPS "SimpleCxx headeronlytpl")

# Include configuration of dependent packages
if (NOT TARGET HeaderOnlyTpl::all_libs)
  include("${CMAKE_CURRENT_LIST_DIR}/../../external_packages/HeaderOnlyTpl/HeaderOnlyTplConfig.cmake")
endif()
if (NOT TARGET MPI::all_libs)
  include("${CMAKE_CURRENT_LIST_DIR}/../../external_packages/MPI/MPIConfig.cmake")
endif()

# Import SimpleCxx targets
include("${CMAKE_CURRENT_LIST_DIR}/SimpleCxxTargets.cmake")

# Standard TriBITS-compliant external package variables
set(SimpleCxx_IS_TRIBITS_COMPLIANT TRUE)
set(SimpleCxx_TRIBITS_COMPLIANT_PACKAGE_CONFIG_FILE "${CMAKE_CURRENT_LIST_FILE}")
set(SimpleCxx_TRIBITS_COMPLIANT_PACKAGE_CONFIG_FILE_DIR "${CMAKE_CURRENT_LIST_DIR}")

