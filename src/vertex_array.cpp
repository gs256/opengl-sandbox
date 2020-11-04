#include "vertex_array.h"
#include <GL/glew.h>

VertexArray::VertexArray() 
    : numberOfVertices(0) {
    glGenVertexArrays(1, &rendererId);
}

VertexArray::~VertexArray() {
    glDeleteVertexArrays(1, &rendererId);
}

void VertexArray::AddBuffer(const VertexBuffer& vb, const VertexBufferLayout& layout) {
    Bind();
    vb.Bind();
    const auto& elements = layout.GetElements();
    uintptr_t offset = 0;

    for (unsigned int i = 0; i < elements.size(); i++) {
        const auto& element = elements[i];
        glEnableVertexAttribArray(i);
        glVertexAttribPointer(i, element.count, element.type, 
            element.normalized, layout.GetStride(), (const void*)offset);
        offset += element.count * VertexBufferElement::GetSizeOfType(element.type);
    }

    numberOfVertices = vb.GetSize() / layout.GetStride();
}

unsigned int VertexArray::GetNumberOfVertices() const {
    return numberOfVertices;
}

void VertexArray::Bind() const {
    glBindVertexArray(rendererId);
}

void VertexArray::Unbind() const {
    glBindVertexArray(0);
}