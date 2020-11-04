# MACROS = -DGLEW_STATIC
INCLUDE_DIRS = -Idependencies/glfw/include -Idependencies/glew/include
LIB_DIRS = -Ldependencies/glfw/lib -Ldependencies/glew/lib 
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test
SRC = src/test.cpp src/shader.cpp src/stb_image/stb_image.cpp src/texture.cpp src/vertex_array.cpp src/vertex_buffer.cpp src/vertex_buffer_layout.cpp src/index_buffer.cpp src/renderer.cpp

all:
	g++ -g -std=c++17 $(MACROS) $(INCLUDE_DIRS) $(LIB_DIRS) $(SRC) $(LIBS) -o $(OUTPUT)
	$(OUTPUT)