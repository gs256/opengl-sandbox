#pragma once
#include "../vendor/glm/glm.hpp"
#include "test.h"
#include "../renderer.h"
#include "../texture.h"
#include "../vertex_buffer.h"
#include <memory>

namespace test {
    
    class TestTexture2D : public Test {
    private:  
        std::unique_ptr<VertexArray> vao;
        std::unique_ptr<VertexBuffer> vertexBuffer;
        std::unique_ptr<IndexBuffer> ibo;
        std::unique_ptr<Shader> shader;
        std::unique_ptr<Texture> texture;
        glm::vec3 translation;
        glm::mat4 projection, view;

    public:
        TestTexture2D();
        ~TestTexture2D();

        void OnUpdate(float deltaTime) override;
        void OnRender() override;
        void OnImGuiRender() override;
    };

} 
