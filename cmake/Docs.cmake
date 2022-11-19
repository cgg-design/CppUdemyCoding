# find_package(Doxygen)

# if (DOXYGEN_FOUND)
#     configure_file(
#         ${CMAKE_CURRENT_SOURCE_DIR}/docs/Doxyfile
#         ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile @ONLY)
#     add_custom_target(docs
#         ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile
#         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/docs)
# endif()

find_package(Doxygen)

if (DOXYGEN_FOUND)
    # set input and output files
    set(DOXYGEN_IN ${CMAKE_CURRENT_SOURCE_DIR}/docs/Doxyfile.in)
    set(DOXYGEN_OUT ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile)
    # message(">>>>>>>  " ${CMAKE_CURRENT_BINARY_DIR})
    # request to configure the file
    configure_file(${DOXYGEN_IN} ${DOXYGEN_OUT} @ONLY)

    message("-> Doxygen build started")

    add_custom_target(docs
        ${DOXYGEN_EXECUTABLE} ${DOXYGEN_OUT}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/docs
        COMMENT "-> Generating API documentation with Doxygen"
        # VERBATIM
        ) 
else (DOXYGEN_FOUND)
    message("Doxygen need to be installed to generate the doxygen documentation")
endif (DOXYGEN_FOUND)