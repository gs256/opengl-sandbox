# cmake .. -G "MinGW Makefiles"

cmake_minimum_required(VERSION 3.12)
project(test VERSION 1.0.0)

add_subdirectory(src)
add_subdirectory(src/vendor/imgui)
add_subdirectory(src/vendor/stb_image)