#pragma once
#include <string>
#include <unordered_map>
#include "vendor/glm/glm.hpp"

struct ShaderProgramSource {
    std::string vertexShader;
    std::string fragmentShader;
};

class Shader {
private:
    std::string filePath;
    unsigned int rendererId;
    std::unordered_map<std::string, int> uniformLocationCache;

public:
    Shader(const std::string& filePath);
    ~Shader();

    void Bind() const;
    void Unbing() const;

    void SetUniform1i(const std::string& name, int value);
    void SetUniform4f(const std::string& name, float v0, float v1, float v2, float v3);
    void SetUniformMat4f(const std::string& name, const glm::mat4& matrix);

private:
    unsigned int CompileShader(unsigned int type, const std::string& source);
    ShaderProgramSource ParseShader(const std::string& filePath);
    unsigned int CreateShader(const std::string& vertexShader, const std::string& fragmentShader);
    int GetUniformLocation(const std::string& name);
};