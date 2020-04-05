add_library(Context.Common
    BoundingVolume.cpp
    Camera.cpp
    Camera2d.cpp
    Common.cpp
    DefaultShader.cpp
    FileLoader.cpp
    Matrix4x4.cpp
    ModelviewMatrix.cpp
    Plane.cpp
    ProjectionMatrix.cpp
    Quaternion.cpp
    Shader.cpp
    stb_truetype.cpp
    Texture.cpp
    TextureLoader.cpp
    Tokenizer.cpp
    uiFont.cpp
    Vector3.cpp
    glad.c)

target_compile_features(Context.Common
    PRIVATE cxx_auto_type
    PRIVATE cxx_nullptr
    PRIVATE cxx_lambdas
    )

target_include_directories(Context.Common
    PUBLIC .)

target_link_libraries(Context.Common
    CONAN_PKG::glm)
