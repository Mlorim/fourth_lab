cmake_minimum_required(VERSION 3.16)

project(matrix)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")
set(CMAKE_BUILD_TYPE Debug)

include_directories(${PROJECT_SOURCE_DIR}/src)

file(GLOB SOURCES
    src/*.cpp
    tests/*.cpp
)
add_executable(${PROJECT_NAME} ${SOURCES})