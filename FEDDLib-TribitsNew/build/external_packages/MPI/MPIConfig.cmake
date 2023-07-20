# Package config file for external package/TPL 'MPI'
#
# Generated by CMake, do not edit!

# Guard against multiple inclusion
if (TARGET MPI::all_libs)
  return()
endif()

add_library(MPI::all_libs INTERFACE IMPORTED)


# Standard TriBITS-compliant external package variables
set(MPI_IS_TRIBITS_COMPLIANT TRUE)
set(MPI_TRIBITS_COMPLIANT_PACKAGE_CONFIG_FILE "${CMAKE_CURRENT_LIST_FILE}")
set(MPI_TRIBITS_COMPLIANT_PACKAGE_CONFIG_FILE_DIR "${CMAKE_CURRENT_LIST_DIR}")
