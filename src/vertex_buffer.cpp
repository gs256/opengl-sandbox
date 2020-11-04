#include "vertex_buffer.h"
#include <GL/glew.h> 

VertexBuffer::VertexBuffer(const void* data, unsigned int size) {
    glGenBuffers(1, &rendererId);
    glBindBuffer(GL_ARRAY_BUFFER, rendererId);
    glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW);
    this->size = size;
}

VertexBuffer::~VertexBuffer() {
    glDeleteBuffers(1, &rendererId);
}

unsigned int VertexBuffer::GetSize() const {
    return size;
}

void VertexBuffer::Bind() const {
    glBindBuffer(GL_ARRAY_BUFFER, rendererId);
}

void VertexBuffer::Unbind() const {
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}