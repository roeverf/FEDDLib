# Install script for directory: /home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "core" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/libcore.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "core" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/core_config.h"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/FEDDCore.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/DefaultTypeDefs.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/Map_decl.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/Map_def.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/MultiVector_decl.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/MultiVector_def.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/BlockMap_def.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/BlockMap_decl.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/BlockMultiVector_decl.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/BlockMultiVector_def.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/BlockMatrix_decl.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/BlockMatrix_def.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/Matrix_decl.hpp"
    "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/feddlib/core/LinearAlgebra/Matrix_def.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/LinearAlgebra/tests/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/core" TYPE FILE RENAME "coreConfig.cmake" FILES "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/CMakeFiles/coreConfig_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/core/coreTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/core/coreTargets.cmake"
         "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/CMakeFiles/Export/6cd642201169ac6f322419f1a4d1b447/coreTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/core/coreTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/core/coreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/core" TYPE FILE FILES "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/CMakeFiles/Export/6cd642201169ac6f322419f1a4d1b447/coreTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/core" TYPE FILE FILES "/home/roeverf/opt/feddlib/FEDDLib-TribitsNew/build/feddlib/core/CMakeFiles/Export/6cd642201169ac6f322419f1a4d1b447/coreTargets-release.cmake")
  endif()
endif()

