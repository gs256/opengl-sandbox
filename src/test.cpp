#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
#include <sstream>
#include "vertex_buffer.h"
#include "index_buffer.h"
#include "vertex_array.h"
#include "shader.h"
#include "renderer.h"
#include "texture.h"
#include "vendor/glm/glm.hpp"
#include "vendor/glm/gtc/matrix_transform.hpp"
#include "vendor/imgui/imgui.h"
#include "vendor/imgui/imgui_impl_glfw_gl3.h"
#include "tests/test_clear_color.h"
#include "tests/test_texture2d.h"

int main(void)
{
    GLFWwindow* window;

    if (!glfwInit())
        return -1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    window = glfwCreateWindow(1280, 720, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    if (glewInit() != GLEW_OK)
        throw std::exception();

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    Renderer renderer;

    ImGui::CreateContext();
    ImGui_ImplGlfwGL3_Init(window, true);
    ImGui::StyleColorsDark();

    test::Test* currentTest = nullptr;
    test::TestMenu* testMenu = new test::TestMenu(currentTest);
    currentTest = testMenu;

    testMenu->RegisterTest<test::TestClearColor>("Clear color");
    testMenu->RegisterTest<test::TestTexture2D>("Texture 2D");

    while (!glfwWindowShouldClose(window))
    {
        glClearColor(0.0, 0.0, 0.0, 1.0);
        renderer.Clear();

        ImGui_ImplGlfwGL3_NewFrame();

        if (currentTest) {
            currentTest->OnUpdate(0.0);
            currentTest->OnRender();
            ImGui::Begin("Test");
            if (currentTest != testMenu && ImGui::Button("<-")) {
                delete currentTest;
                currentTest = testMenu;
            }
            
            currentTest->OnImGuiRender();
            ImGui::End();
        }

        // test.OnImGuiRender();
        ImGui::Render();
        ImGui_ImplGlfwGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    delete currentTest;
    if (currentTest != testMenu)
        delete testMenu;

    ImGui_ImplGlfwGL3_Shutdown();
    ImGui::DestroyContext();
    glfwTerminate();
    return 0;
}