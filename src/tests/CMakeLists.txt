cmake_minimum_required(VERSION 3.12)
project(tests VERSION 1.0.0)

file(GLOB TESTS_SRC *.cpp)
add_library(tests STATIC ${TESTS_SRC})

target_include_directories(tests PUBLIC ${CMAKE_SOURCE_DIR}/dependencies/glfw/include)
target_include_directories(tests PUBLIC ${CMAKE_SOURCE_DIR}/dependencies/glew/include)