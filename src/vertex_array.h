#pragma once
#include "vertex_buffer.h"
#include "vertex_buffer_layout.h"
#include "index_buffer.h"

class VertexArray {
private:
    unsigned int rendererId;
    unsigned int numberOfVertices;

public:
    VertexArray();
    ~VertexArray();

    void AddBuffer(const VertexBuffer& vb, const VertexBufferLayout& layout);
    unsigned int GetNumberOfVertices() const;
    void Bind() const;
    void Unbind() const;
};