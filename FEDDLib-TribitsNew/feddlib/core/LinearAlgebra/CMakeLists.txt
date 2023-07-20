SET(LinearAlgebra_HEADERS
  LinearAlgebra/Map_def.hpp
  LinearAlgebra/Map_decl.hpp
  LinearAlgebra/MultiVector_decl.hpp
  LinearAlgebra/MultiVector_def.hpp
  LinearAlgebra/BlockMap_decl.hpp
  LinearAlgebra/BlockMap_def.hpp

  CACHE INTERNAL "")

SET(LinearAlgebra_SOURCES
    LinearAlgebra/Map.cpp
    LinearAlgebra/MuiltiVector.cpp
    LinearAlgebra/BlockMuiltiVector.cpp
    LinearAlgebra/BlockMap.cpp
    LinearAlgebra/BlockMatrix.hpp
    LinearAlgebra/Matrix.cpp
    CACHE INTERNAL "")


SET(LOCAL_HEADERS)
FOREACH(INC ${LinearAlgebra_HEADERS})
  STRING(REPLACE "LinearAlgebra/" "" LOCAL_INC ${INC})
  SET(LOCAL_HEADERS ${LOCAL_HEADERS} ${LOCAL_INC})
ENDFOREACH()


INSTALL(
  FILES ${LOCAL_HEADERS}
  DESTINATION "${${PROJECT_NAME}_INSTALL_INCLUDE_DIR}/feddlib/core/LinearAlgebra"
  COMPONENT ${PACKAGE_NAME}
)
