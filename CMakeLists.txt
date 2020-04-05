cmake_minimum_required(VERSION 3.16)

project(Context)
include(cmake/StandardProjectSettings.cmake)

set(CONAN_EXTRA_REQUIRES "")
set(CONAN_EXTRA_OPTIONS "")

set(CONAN_EXTRA_REQUIRES ${CONAN_EXTRA_REQUIRES}
    glm/0.9.9.5@g-truc/stable)

include(cmake/Conan.cmake)
run_conan()

find_package(OpenGL REQUIRED)

add_subdirectory(Common)
add_subdirectory(Context)
add_subdirectory(ContextTest)
add_subdirectory(FileSystem)
add_subdirectory(Geometry)
add_subdirectory(GoldSource)
