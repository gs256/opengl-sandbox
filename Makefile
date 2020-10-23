# MACROS = -DGLEW_STATIC
SRC_FILES = src/index_buffer.cpp src/vertex_buffer.cpp src/vertex_array.cpp src/vertex_buffer_layout.cpp src/shader.cpp src/renderer.cpp src/texture.cpp src/vendor/stb_image/stb_image.cpp
IMGUI_SRC = src/vendor/imgui/imgui.cpp src/vendor/imgui/imgui_demo.cpp src/vendor/imgui/imgui_draw.cpp src/vendor/imgui/imgui_impl_glfw_gl3.cpp
LIBS_DIRS = -Ldependencies/glfw/lib -Ldependencies/glew/lib
LIBS = -lglfw3dll -lopengl32 -lglew32 
INCLUDE_DIRS = -Idependencies/glew/include -Idependencies/glfw/include
OUTPUT = build/test
STANDARD = c++17

all:
	g++ -std=$(STANDARD) $(MACROS) src/test.cpp $(SRC_FILES) $(IMGUI_SRC) $(INCLUDE_DIRS) $(LIBS_DIRS) $(LIBS) -o $(OUTPUT)
	$(OUTPUT)