#include "test.h"
#include "../vendor/imgui/imgui.h"

namespace test {

    TestMenu::TestMenu(Test*& currentTestPtr) 
        : currentTest(currentTestPtr) {}

    void TestMenu::OnImGuiRender() {
        for (auto& test : tests) {
            if (ImGui::Button(test.first.c_str()))
                currentTest = test.second();
        }
    }

}