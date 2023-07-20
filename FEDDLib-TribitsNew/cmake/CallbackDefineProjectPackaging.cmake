macro(TRIBITS_PROJECT_DEFINE_PACKAGING)

    tribits_copy_installer_resource(FEDDLib_README
      "${FEDDLib_SOURCE_DIR}/README.md"
      "${FEDDLib_BINARY_DIR}/README.md")
    tribits_copy_installer_resource(FEDDLib_LICENSE
      "${FEDDLib_SOURCE_DIR}/LICENSE"
      "${FEDDLib_BINARY_DIR}/LICENSE.txt")

    set(CPACK_PACKAGE_DESCRIPTION "FEDDLib just shows you how to use TriBITS.")
    set(CPACK_PACKAGE_FILE_NAME "feddlib-setup-${FEDDLib_VERSION}")
    set(CPACK_PACKAGE_INSTALL_DIRECTORY "FEDDLib ${FEDDLib_VERSION}")
    set(CPACK_PACKAGE_REGISTRY_KEY "FEDDLib ${FEDDLib_VERSION}")
    set(CPACK_PACKAGE_NAME "feddlib")
    set(CPACK_PACKAGE_VENDOR "Sandia National Laboratories")
    set(CPACK_PACKAGE_VERSION "${FEDDLib_VERSION}")
    set(CPACK_RESOURCE_FILE_README "${FEDDLib_README}")
    set(CPACK_RESOURCE_FILE_LICENSE "${FEDDLib_LICENSE}")
    set(${PROJECT_NAME}_CPACK_SOURCE_GENERATOR_DEFAULT "TGZ;TBZ2")
    set(CPACK_SOURCE_FILE_NAME "feddlib-source-${FEDDLib_VERSION}")
    set(CPACK_COMPONENTS_ALL ${FEDDLib_PACKAGES} Unspecified)

endmacro()
