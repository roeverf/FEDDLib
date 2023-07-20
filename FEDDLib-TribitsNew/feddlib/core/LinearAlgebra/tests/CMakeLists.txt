INCLUDE(TribitsCopyFilesToBinaryDir)
INCLUDE(TribitsAddExecutableAndTest)
INCLUDE(AddSubdirectories)

### BlockViews
#TRIBITS_ADD_EXECUTABLE(
#	blockView
#	SOURCES blockView.cpp
#)

#TRIBITS_ADD_TEST(
#	blockView
#    NAME blockView
#    ARGS
#    NUM_MPI_PROCS 2
#)

### Map

tribits_add_executable_and_test(
  Map
  SOURCES
    map.cpp
  NUM_MPI_PROCS 4
  STANDARD_PASS_OUTPUT
  )



  #Matrix####
  tribits_add_executable_and_test(
    Matrix
    SOURCES
      matrix.cpp
    NUM_MPI_PROCS 4
    STANDARD_PASS_OUTPUT
    )

    tribits_add_executable_and_test(
      Matrix_Assembly
      SOURCES
        matrix_assembly.cpp
      NUM_MPI_PROCS 4
      STANDARD_PASS_OUTPUT
      )

#MultiVector####
tribits_add_executable_and_test(
  MultiVector
  SOURCES
    multivector.cpp
  NUM_MPI_PROCS 4
  STANDARD_PASS_OUTPUT
  )






#TRIBITS_COPY_FILES_TO_BINARY_DIR(data_matrix
#	SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
#	SOURCE_FILES
#	DEST_DIR ${CMAKE_CURRENT_BINARY_DIR}
#	DEST_FILES
#	EXEDEPS matrix
#)


### Consistent Partitioning
#TRIBITS_ADD_EXECUTABLE(
#consistentPartitioning
#SOURCES consistentPartitioning.cpp
#)

#TRIBITS_ADD_TEST(
#consistentPartitioning
#NAME consistentPartitioning
#ARGS
#NUM_MPI_PROCS 2
#)
