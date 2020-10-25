#include "test_texture2d.h"
#include "../vendor/imgui/imgui.h"
#include "../vertex_buffer_layout.h"
#include "../vendor/glm/gtc/matrix_transform.hpp"

namespace test {

    TestTexture2D::TestTexture2D() 
        : translation(200, 200, 0),
        projection(glm::ortho(0.0, 1280.0, 0.0, 720.0, -1.0, 1.0)),
        view(glm::translate(glm::mat4(1.0), glm::vec3(-100, 0, 0))) {

        float positions[] = {
            100.0, 100.0, 0.0, 0.0,
            200.0, 100.0, 1.0, 0.0,
            200.0, 200.0, 1.0, 1.0,
            100.0, 200.0, 0.0, 1.0
        };

        unsigned int indicies[] = {
            0, 1, 2, 
            2, 3, 0
        };

        glEnable(GL_BLEND);
        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

        vao = std::make_unique<VertexArray>();

        vertexBuffer = std::make_unique<VertexBuffer>(positions, 4 * 4 * sizeof(float));
        VertexBufferLayout layout;
        layout.Push<float>(2);
        layout.Push<float>(2);
        vao->AddBuffer(*vertexBuffer, layout);

        ibo = std::make_unique<IndexBuffer>(indicies, 6);

        shader = std::make_unique<Shader>("resources/shaders/basic.shader");
        shader->Bind();
        shader->SetUniform4f("u_Color", 0.2, 0.3, 0.8, 1.0);

        texture = std::make_unique<Texture>("resources/textures/texture.jpg");
        shader->SetUniform1i("u_Texture", 0);
    }

    TestTexture2D::~TestTexture2D() {}

    void TestTexture2D::OnUpdate(float deltaTime) {}

    void TestTexture2D::OnRender() {
        glClearColor(0.1, 0.4, 0.2, 1.0);
        glClear(GL_COLOR_BUFFER_BIT);

        Renderer renderer;
        texture->Bind();

        glm::mat4 model = glm::translate(glm::mat4(1.0), translation);
        glm::mat4 mvp = projection * view * model;
        shader->Bind();
        shader->SetUniformMat4f("u_MVP", mvp);
        renderer.Draw(*vao, *ibo, *shader);
    }

    void TestTexture2D::OnImGuiRender() {
        ImGui::SliderFloat3("Translation", &translation.x, 0.0f, 1280.0);
        ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
    }

}