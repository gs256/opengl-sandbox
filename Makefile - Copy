# MACROS = -DGLEW_STATIC
SRC_FILES = src/index_buffer.cpp src/vertex_buffer.cpp src/vertex_array.cpp src/vertex_buffer_layout.cpp src/shader.cpp src/renderer.cpp src/texture.cpp src/vendor/stb_image/stb_image.cpp
INCLUDE_DIRS = -Lglfw/lib -Lglew/lib
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test
STANDARD = c++17

all:
	g++ -g -std=$(STANDARD) $(MACROS) src/test.cpp $(SRC_FILES) $(INCLUDE_DIRS) $(LIBS) -o $(OUTPUT)
	$(OUTPUT)