cmake_minimum_required(VERSION 3.12)
project(opengl_test  VERSION 1.0.0)

link_directories(${CMAKE_SOURCE_DIR}/dependencies/glfw/lib)
link_directories(${CMAKE_SOURCE_DIR}/dependencies/glew/lib)

file(GLOB SRC *.cpp)
add_executable(opengl_test ${SRC})

target_include_directories(
    opengl_test PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/vendor/imgui
    ${CMAKE_CURRENT_SOURCE_DIR}/vendor/stb_image
)

target_link_libraries(opengl_test imgui stbi)
target_link_libraries(
    opengl_test
    glfw3dll 
    opengl32 
    glew32
)