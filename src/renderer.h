#pragma once
#include <GL/glew.h>
// #include "../glew/include/glew.h"
#include "vertex_array.h"
#include "index_buffer.h"
#include "shader.h"

class Renderer {
private:

public:
    void Clear() const;
    void Draw(const VertexArray& va, const IndexBuffer& ib, const Shader& shader) const;
};