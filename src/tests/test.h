#pragma once
#include <vector>
#include <functional>

namespace test {

    class Test {
    private:

    public:
        Test() {}
        virtual ~Test() {}

        virtual void OnUpdate(float deltaTime) {}
        virtual void OnRender() {}
        virtual void OnImGuiRender() {}
    };

    class TestMenu : public Test {
    private:
        Test*& currentTest;
        std::vector<std::pair<std::string, std::function<Test*()>>> tests;

    public:
        TestMenu(Test*& currentTestPtr);

        void OnImGuiRender() override;

        template <typename T>
        void RegisterTest(const std::string& name) {
            tests.push_back(std::make_pair(name, [](){ return new T(); }));
        }
    };

}