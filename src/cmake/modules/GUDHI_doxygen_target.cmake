# add a target to generate API documentation with Doxygen
find_package(Doxygen)
if(DOXYGEN_FOUND)
  # configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile @ONLY)

  add_custom_target(doxygen ${DOXYGEN_EXECUTABLE} ${GUDHI_USER_VERSION_DIR}/Doxyfile
                    WORKING_DIRECTORY ${GUDHI_USER_VERSION_DIR}
                    DEPENDS ${GUDHI_USER_VERSION_DIR}/Doxyfile ${GUDHI_DOXYGEN_DEPENDENCY}
                    COMMENT "Generating API documentation with Doxygen in ${GUDHI_USER_VERSION_DIR}/doc/html/" VERBATIM)

endif(DOXYGEN_FOUND)