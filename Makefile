# MACROS = -DGLEW_STATIC
SRC_FILES = src/index_buffer.cpp src/vertex_buffer.cpp
INCLUDE_DIRS = -Lglfw/lib -Lglew/lib
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test

all:
	g++ $(MACROS) src/test.cpp $(SRC_FILES) $(INCLUDE_DIRS) $(LIBS) -o $(OUTPUT)
	$(OUTPUT)