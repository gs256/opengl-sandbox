# MACROS = -DGLEW_STATIC
INCLUDE_DIRS = -Idependencies/glfw/include -Idependencies/glew/include
LIB_DIRS = -Ldependencies/glfw/lib -Ldependencies/glew/lib 
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test

all:
	g++ -g -std=c++17 $(MACROS) $(INCLUDE_DIRS) $(LIB_DIRS) src/test.cpp src/shader.cpp src/stb_image/stb_image.cpp $(LIBS) -o $(OUTPUT)
	$(OUTPUT)