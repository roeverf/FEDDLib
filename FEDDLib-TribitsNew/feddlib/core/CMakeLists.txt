#INCLUDE(TribitsPackageMacros)
#INCLUDE(TribitsAddOptionAndDefine)
#INCLUDE(TribitsLibraryMacros)

#
# A) Define the package
#

TRIBITS_PACKAGE(core)
SET(${PACKAGE_NAME}_VERSION "1.0.0")

#
# B) Set up package-specific options
#

TRIBITS_ADD_SHOW_DEPRECATED_WARNINGS_OPTION()

FOREACH(TRILINOS_PACKAGE_NAME in ${Trilinos_PACKAGE_LIST})
    IF(${TRILINOS_PACKAGE_NAME} STREQUAL "NOX")
        SET(FEDD_HAVE_NOX TRUE)
    ENDIF()
ENDFOREACH()

FOREACH(TRILINOS_PACKAGE_NAME in ${Trilinos_PACKAGE_LIST})
    IF(${TRILINOS_PACKAGE_NAME} STREQUAL "Teko")
        SET(FEDD_HAVE_TEKO TRUE)
    ENDIF()
ENDFOREACH()


TRIBITS_CONFIGURE_FILE(${PACKAGE_NAME}_config.h)

SET(HEADERS "")
SET(SOURCES "")


ASSERT_DEFINED(PROJECT_SOURCE_DIR)
ASSERT_DEFINED(PROJECT_BINARY_DIR)

TRIBITS_INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR})

#
# Include packages/src directory
#
TRIBITS_INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})
TRIBITS_INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
TRIBITS_INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/LinearAlgebra)

APPEND_SET(HEADERS
  ${CMAKE_CURRENT_BINARY_DIR}/${PACKAGE_NAME}_config.h
  )

TRIBITS_INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})


TRIBITS_EXCLUDE_AUTOTOOLS_FILES()
# This is the list of files excluded from the tarball
TRIBITS_EXCLUDE_FILES()


APPEND_SET(HEADERS
    FEDDCore.hpp
    DefaultTypeDefs.hpp
    LinearAlgebra/Map_decl.hpp
    LinearAlgebra/Map_def.hpp
    LinearAlgebra/MultiVector_decl.hpp
    LinearAlgebra/MultiVector_def.hpp
    LinearAlgebra/BlockMap_def.hpp
    LinearAlgebra/BlockMap_decl.hpp
    LinearAlgebra/BlockMultiVector_decl.hpp
    LinearAlgebra/BlockMultiVector_def.hpp
    LinearAlgebra/BlockMatrix_decl.hpp
    LinearAlgebra/BlockMatrix_def.hpp
    LinearAlgebra/Matrix_decl.hpp
    LinearAlgebra/Matrix_def.hpp
    )

APPEND_SET(SOURCES
    dummy.cpp
  )
# Add library target

TRIBITS_ADD_LIBRARY(
  core
  HEADERS ${HEADERS}
  SOURCES ${SOURCES}
  )

#TRIBITS_ADD_TEST_DIRECTORIES(FE/tests)
#TRIBITS_ADD_TEST_DIRECTORIES(General/tests)
#TRIBITS_ADD_TEST_DIRECTORIES(Mesh/tests)
TRIBITS_ADD_TEST_DIRECTORIES(LinearAlgebra/tests)


#TRIBITS_ADD_EXAMPLE_DIRECTORIES(examples)

#
# Do standard postprocessing
#

TRIBITS_PACKAGE_POSTPROCESS()
