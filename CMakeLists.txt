cmake_minimum_required(VERSION 3.16)

project(Context)

include(cmake/get_cpm.cmake)
include(cmake/Dependencies.cmake)

find_package(OpenGL REQUIRED)

add_subdirectory(Common)
add_subdirectory(Context)
add_subdirectory(ContextTest)
add_subdirectory(FileSystem)
add_subdirectory(Geometry)
add_subdirectory(GoldSource)
