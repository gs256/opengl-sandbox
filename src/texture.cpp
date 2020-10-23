#include "texture.h"
#include "vendor/stb_image/stb_image.h"
#include <cstring>

Texture::Texture(const std::string& path)
    : rendererId(0), filePath(path), localBuffer(nullptr), width(0), height(0), bpp(0) {
    stbi_set_flip_vertically_on_load(1);
    localBuffer = stbi_load(path.c_str(), &width, &height, &bpp, 4);
    // localBuffer = stbi_load("D:\\Pictures\\original.jpg", &width, &height, &bpp, 4);

    if(stbi_failure_reason())
		std::cout << stbi_failure_reason();

    glGenTextures(1, &rendererId);
    glBindTexture(GL_TEXTURE_2D, rendererId);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, localBuffer);
    glBindTexture(GL_TEXTURE_2D, 0);

    if (localBuffer)
        stbi_image_free(localBuffer);
}

Texture::~Texture() {
    glDeleteTextures(1, &rendererId);
}

void Texture::Bind(unsigned int slot) const {
    glActiveTexture(GL_TEXTURE0 + slot);
    glBindTexture(GL_TEXTURE_2D, rendererId);
}

void Texture::Unbind() const {
    glBindTexture(GL_TEXTURE_2D, 0);
}