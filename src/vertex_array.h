#pragma once
#include "vertex_buffer.h"
#include "vertex_buffer_layout.h"

class VertexArray {
private:
    unsigned int rendererId;

public:
    VertexArray();
    ~VertexArray();

    void AddBuffer(const VertexBuffer& vb, const VertexBufferLayout& layout);
    void Bind() const;
    void Unbind() const;
};