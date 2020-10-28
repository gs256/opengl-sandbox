# MACROS = -DGLEW_STATIC
INCLUDE_DIRS = -Idependencies/glfw/include -Idependencies/glew/include
LIB_DIRS = -Ldependencies/glfw/lib -Ldependencies/glew/lib 
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test

all:
	g++ $(MACROS) $(INCLUDE_DIRS) $(LIB_DIRS) src/test.cpp $(LIBS) -o $(OUTPUT)
	$(OUTPUT)