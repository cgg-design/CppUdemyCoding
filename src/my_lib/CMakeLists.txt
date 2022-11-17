set(LIBRARY_SOURCES
    "my_lib.cc")
# set(LIBRARY_HEADER
#     "my_lib.h")
set(LIBRARY_INCLUDES
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/include")

add_library(${LIBRARY_NAME} STATIC
    ${LIBRARY_SOURCES})
target_include_directories(${LIBRARY_NAME} PUBLIC
    ${LIBRARY_INCLUDES})
target_link_libraries(${LIBRARY_NAME} PRIVATE
    nlohmann_json)
##
# target_set_warnings(TARGET ${LIBRARY_NAME} ENABLE ON AS_ERROR OFF)

if(${ENABLE_LTO})
    target_enable_Ito(${LIBRARY_NAME} optimized )
endif()
