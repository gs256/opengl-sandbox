cmake_minimum_required(VERSION 3.12)
project(imgui VERSION 1.0.0)

file(GLOB IMGUI_SRC *.cpp)
add_library(imgui STATIC ${IMGUI_SRC})

target_include_directories(imgui PUBLIC ${CMAKE_SOURCE_DIR}/dependencies/glfw/include)
target_include_directories(imgui PUBLIC ${CMAKE_SOURCE_DIR}/dependencies/glew/include)