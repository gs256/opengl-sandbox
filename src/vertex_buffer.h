#pragma once

class VertexBuffer {
private:
    unsigned int rendererId;
    unsigned int size;

public:
    VertexBuffer(const void* data, unsigned int size);
    ~VertexBuffer();

    unsigned int GetSize() const;
    void Bind() const;
    void Unbind() const;
};