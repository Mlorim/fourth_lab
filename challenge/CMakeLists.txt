cmake_minimum_required(VERSION 3.16)

project(exlib)

find_package(VTK REQUIRED)
if (VTK_FOUND)
    # include(${VTK_USE_FILE})
    message(STATUS "VTK Found")
endif()

add_library(gmsh SHARED IMPORTED)
set_target_properties(gmsh PROPERTIES
    IMPORTED_LOCATION "/opt/homebrew/Cellar/gmsh/4.13.1_3/lib/libgmsh.dylib"
    INTERFACE_INCLUDE_DIRECTORIES "/opt/homebrew/Cellar/gmsh/4.13.1_3/include"
)
set(GMSH_LIBRARIES gmsh)

# set(GMSH_INCLUDE_DIRS "/opt/homebrew/Cellar/gmsh/4.13.1_3/include")
# set(GMSH_LIBRARIES "/opt/homebrew/Cellar/gmsh/4.13.1_3/lib/libgmsh.dylib")

file(COPY ${PROJECT_SOURCE_DIR}/t13_data.stl DESTINATION ${PROJECT_BINARY_DIR})


add_executable(simple simple.cpp)
target_link_libraries(simple ${VTK_LIBRARIES})

add_executable(challenging challengind.cpp)
target_link_libraries(challenging ${VTK_LIBRARIES} ${GMSH_LIBRARIES})
