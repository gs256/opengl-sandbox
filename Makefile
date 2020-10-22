# MACROS = -DGLEW_STATIC
SRC_FILES = src/index_buffer.cpp src/vertex_buffer.cpp src/vertex_array.cpp src/vertex_buffer_layout.cpp
INCLUDE_DIRS = -Lglfw/lib -Lglew/lib
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test
STANDARD = c++17

all:
	g++ -std=$(STANDARD) $(MACROS) src/test.cpp $(SRC_FILES) $(INCLUDE_DIRS) $(LIBS) -o $(OUTPUT)
	$(OUTPUT)