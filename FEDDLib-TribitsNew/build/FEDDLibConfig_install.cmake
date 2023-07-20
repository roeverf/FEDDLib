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
# CMake variable for use by FEDDLib clients. 
#
# Do not edit: This file was generated automatically by CMake.
#
##############################################################################

#
# Ensure CMAKE_CURRENT_LIST_DIR is usable.
#


## ---------------------------------------------------------------------------
## Compilers used by FEDDLib build
## ---------------------------------------------------------------------------

SET(FEDDLib_CXX_COMPILER "/usr/bin/mpicxx")

SET(FEDDLib_C_COMPILER "/usr/bin/mpicc")

SET(FEDDLib_Fortran_COMPILER "/usr/bin/mpif90")

## ---------------------------------------------------------------------------
## Compiler flags used by FEDDLib build
## ---------------------------------------------------------------------------

SET(FEDDLib_CMAKE_BUILD_TYPE "RELEASE")

SET(FEDDLib_CXX_COMPILER_FLAGS " -O3 -DNDEBUG")

SET(FEDDLib_C_COMPILER_FLAGS " -O3 -DNDEBUG")

SET(FEDDLib_Fortran_COMPILER_FLAGS " -O3")

## Extra link flags (e.g., specification of fortran libraries)
SET(FEDDLib_EXTRA_LD_FLAGS "")

## This is the command-line entry used for setting rpaths. In a build
## with static libraries it will be empty. 
SET(FEDDLib_SHARED_LIB_RPATH_COMMAND "")
SET(FEDDLib_BUILD_SHARED_LIBS "FALSE")

SET(FEDDLib_LINKER /usr/bin/ld)
SET(FEDDLib_AR /usr/bin/ar)


## ---------------------------------------------------------------------------
## Set library specifications and paths 
## ---------------------------------------------------------------------------

## The project version number
SET(FEDDLib_VERSION "")

## The project include file directories.
#SET(FEDDLib_INCLUDE_DIRS "")

## The project library directories.
#SET(FEDDLib_LIBRARY_DIRS "")

## The project libraries.
#SET(FEDDLib_LIBRARIES "core::core;SimpleCxx::simplecxx")

## The project tpl include paths
#SET(FEDDLib_TPL_INCLUDE_DIRS "")

## The project tpl library paths
#SET(FEDDLib_TPL_LIBRARY_DIRS "")

## The project tpl libraries
#SET(FEDDLib_TPL_LIBRARIES "Trilinos::all_selected_libs")

# For best practices in handling of components, see
# <http://www.cmake.org/cmake/help/v3.2/manual/cmake-developer.7.html#find-modules>.
#
# If components were requested, include only those. If not, include all of
# Trilinos.
IF (FEDDLib_FIND_COMPONENTS)
  SET(COMPONENTS_LIST ${FEDDLib_FIND_COMPONENTS})
ELSE()
  SET(COMPONENTS_LIST core;SimpleCxx)
ENDIF()

# Initialize FEDDLib_FOUND with true, and set it to FALSE if any of
# the required components wasn't found.
SET(FEDDLib_FOUND TRUE)
FOREACH(comp ${COMPONENTS_LIST})
   SET(
     INCLUDE_FILE
     ${CMAKE_CURRENT_LIST_DIR}/../${comp}/${comp}Config.cmake
     )
   IF (EXISTS ${INCLUDE_FILE})
       # Set FEDDLib_<component>_FOUND.
       SET(FEDDLib_${comp}_FOUND TRUE)
       # Include the package file.
       INCLUDE(${INCLUDE_FILE})
       # Add variables to lists.
       LIST(APPEND FEDDLib_INCLUDE_DIRS ${${comp}_INCLUDE_DIRS})
       LIST(APPEND FEDDLib_LIBRARY_DIRS ${${comp}_LIBRARY_DIRS})
       LIST(APPEND FEDDLib_LIBRARIES ${${comp}_LIBRARIES})
       LIST(APPEND FEDDLib_TPL_INCLUDE_DIRS ${${comp}_TPL_INCLUDE_DIRS})
       LIST(APPEND FEDDLib_TPL_LIBRARY_DIRS ${${comp}_TPL_LIBRARY_DIRS})
       LIST(APPEND FEDDLib_TPL_LIBRARIES ${${comp}_TPL_LIBRARIES})
   ELSE()
       # Component not found.
       MESSAGE(WARNING "Component \"${comp}\" NOT found.")
       # Set FEDDLib_<component>_FOUND to FALSE.
       SET(FEDDLib_${comp}_FOUND FALSE)
       # Set FEDDLib_FOUND to FALSE if component is not optional.
       IF(FEDDLib_FIND_REQUIRED_${comp})
           SET(FEDDLib_FOUND FALSE)
       ENDIF()
   ENDIF()
ENDFOREACH()

# Resolve absolute paths and remove duplicate paths
# for LIBRARY_DIRS and INCLUDE_DIRS
# This reduces stress on regular expressions later
SET(short_dirs)
FOREACH(dir ${FEDDLib_INCLUDE_DIRS})
  GET_FILENAME_COMPONENT(dir_abs ${dir} ABSOLUTE)
  LIST(APPEND short_dirs ${dir_abs})
ENDFOREACH()
LIST(REMOVE_DUPLICATES short_dirs)
SET(FEDDLib_INCLUDE_DIRS ${short_dirs})

SET(short_dirs)
FOREACH(dir ${FEDDLib_LIBRARY_DIRS})
  GET_FILENAME_COMPONENT(dir_abs ${dir} ABSOLUTE)
  LIST(APPEND short_dirs ${dir_abs})
ENDFOREACH()
LIST(REMOVE_DUPLICATES short_dirs)
SET(FEDDLib_LIBRARY_DIRS ${short_dirs})

## ---------------------------------------------------------------------------
## MPI specific variables
##   These variables are provided to make it easier to get the mpi libraries
##   and includes on systems that do not use the mpi wrappers for compiling
## ---------------------------------------------------------------------------

SET(FEDDLib_MPI_LIBRARIES "")
SET(FEDDLib_MPI_LIBRARY_DIRS "")
SET(FEDDLib_MPI_INCLUDE_DIRS "")
SET(FEDDLib_MPI_EXEC "/usr/bin/mpiexec")
SET(FEDDLib_MPI_EXEC_MAX_NUMPROCS "4")
SET(FEDDLib_MPI_EXEC_NUMPROCS_FLAG "-np")

## ---------------------------------------------------------------------------
## Compiler vendor identifications
## ---------------------------------------------------------------------------
SET(FEDDLib_SYSTEM_NAME "Linux")
SET(FEDDLib_CXX_COMPILER_ID "GNU")
SET(FEDDLib_C_COMPILER_ID "GNU")
SET(FEDDLib_Fortran_COMPILER_ID "GNU")
SET(FEDDLib_Fortran_IMPLICIT_LINK_LIBRARIES "mpi_usempif08;mpi_usempi_ignore_tkr;mpi_mpifh;mpi;gfortran;m;gcc_s;gcc;quadmath;m;gcc_s;gcc;pthread;c;gcc_s;gcc")

## ---------------------------------------------------------------------------
## Set useful general variables 
## ---------------------------------------------------------------------------

## The packages enabled for this project
SET(FEDDLib_PACKAGE_LIST "core;SimpleCxx")

## The TPLs enabled for this project
SET(FEDDLib_TPL_LIST "HeaderOnlyTpl;Trilinos;MPI")


