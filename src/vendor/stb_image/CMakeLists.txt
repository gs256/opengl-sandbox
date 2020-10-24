cmake_minimum_required(VERSION 3.12)
project(stb_image VERSION 1.0.0)

file(GLOB STBI_SRC *.cpp)
add_library(stbi STATIC ${STBI_SRC})