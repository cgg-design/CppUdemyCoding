set(APP_SOURCES
    "main.cc")
# set(EXE_INCLUDES
#     "./")

add_executable(${EXECUTABLE_NAME} ${APP_SOURCES})
# target_include_directories(${EXECUTABLE_NAME} PUBLIC
#     ${EXE_INCLUDES})

## Add hie all external libraries to be use
## Get the call from the Git source code
target_link_libraries(${EXECUTABLE_NAME} PUBLIC
    ${LIBRARY_NAME}
    fmt::fmt
    spdlog::spdlog_header_only
    nlohmann_json
    ${CONAN_CXXOPTS}
    )

# target_set_warnings(TARGET ${EXECUTABLE_NAME} ENABLE ON AS_ERROR OFF)