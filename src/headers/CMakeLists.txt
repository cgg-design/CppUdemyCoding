# set(LIBRARY_HEADER
#     "my_lib.h")
set(LIBRARY_INCLUDES "./" # ./ is for current folder
"${CMAKE_BINARY_DIR}/configured_files/includes")
# All header are hier,  # Just for .h files
# include my_lib.h
target_include_directories(${LIBRARY_NAME} PUBLIC ${LIBRARY_INCLUDES})
