#include "../glew/include/glew.h"
#include "../glfw/include/glfw3.h" 
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
#include "./vendor/glm/glm.hpp"
#include "./vendor/glm/gtc/matrix_transform.hpp"

int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(1280, 720, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    if (glewInit() != GLEW_OK)
        throw std::exception();

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

    unsigned int vao;
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    VertexArray va;
    VertexBuffer vb(positions, 4 * 4 * sizeof(float));

    VertexBufferLayout layout;
    layout.Push<float>(2);
    layout.Push<float>(2);
    va.AddBuffer(vb, layout);

    IndexBuffer ib(indicies, 6);

    glm::mat4 projection = glm::ortho(0.0, 1280.0, 0.0, 720.0, -1.0, 1.0);
    glm::mat4 view = glm::translate(glm::mat4(1.0), glm::vec3(-100, 0, 0));
    glm::mat4 model = glm::translate(glm::mat4(1.0), glm::vec3(200, 200, 0));
    glm::mat4 mvp = projection * view * model;

    Shader shader("resources/shaders/basic.shader");
    shader.Bind();
    shader.SetUniform4f("u_Color", 0.2, 0.3, 0.8, 1.0);
    shader.SetUniformMat4f("u_MVP", mvp);

    Texture texture("resources/textures/texture.jpg");
    texture.Bind();
    shader.SetUniform1i("u_Texture", 0);

    va.Unbind();
    vb.Unbind();
    ib.Unbind();
    shader.Unbing();

    Renderer renderer;

    float red = 0.0;
    float delta = 0.05;
    
    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        renderer.Clear();

        shader.Bind();
        shader.SetUniform4f("u_Color", red, 0.3, 0.8, 1.0);

        renderer.Draw(va, ib, shader);
        
        if (red > 1.0)
            delta = -1 * fabs(delta);
        else if (red < 0.0)
            delta = fabs(delta);

        red += delta;

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}