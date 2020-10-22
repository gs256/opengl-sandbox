# MACROS = -DGLEW_STATIC
INCLUDE_DIRS = -Lglfw/lib -Lglew/lib
LIBS = -lglfw3dll -lopengl32 -lglew32 
OUTPUT = build/test

all:
	g++ $(MACROS) src/test.cpp $(INCLUDE_DIRS) $(LIBS) -o $(OUTPUT)
	$(OUTPUT)