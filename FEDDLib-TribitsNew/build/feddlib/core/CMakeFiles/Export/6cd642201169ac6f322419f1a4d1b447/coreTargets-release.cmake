#----------------------------------------------------------------
# Generated CMake target import file for configuration "RELEASE".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "core::core" for configuration "RELEASE"
set_property(TARGET core::core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(core::core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcore.a"
  )

list(APPEND _cmake_import_check_targets core::core )
list(APPEND _cmake_import_check_files_for_core::core "${_IMPORT_PREFIX}/lib/libcore.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
