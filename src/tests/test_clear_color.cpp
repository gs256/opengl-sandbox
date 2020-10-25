#include "test_clear_color.h"
#include "../renderer.h"
#include "../vendor/imgui/imgui.h"

namespace test {

    TestClearColor::TestClearColor() 
        : clearColor { 0.2, 0.3, 0.8, 1.0 } {}

    TestClearColor::~TestClearColor() {}

    void TestClearColor::OnUpdate(float deltaTime) {}

    void TestClearColor::OnRender() {
        glClearColor(clearColor[0], clearColor[1], clearColor[2], clearColor[3]);
        glClear(GL_COLOR_BUFFER_BIT);
    }

    void TestClearColor::OnImGuiRender() {
        ImGui::ColorEdit4("Clear color", clearColor);
    }

}