#----------------------------------------------------------------
# Generated CMake target import file for configuration "RELEASE".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SimpleCxx::simplecxx" for configuration "RELEASE"
set_property(TARGET SimpleCxx::simplecxx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SimpleCxx::simplecxx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libsimplecxx.a"
  )

list(APPEND _cmake_import_check_targets SimpleCxx::simplecxx )
list(APPEND _cmake_import_check_files_for_SimpleCxx::simplecxx "${_IMPORT_PREFIX}/lib/libsimplecxx.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
