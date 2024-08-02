add_library(Context.GoldSource
    DefaultStaticManager.cpp
    Hl1BspData.cpp
    Hl1BspLoader.cpp
    Hl1SprData.cpp
    lightmap.cpp)

target_compile_features(Context.GoldSource
    PRIVATE cxx_auto_type
    PRIVATE cxx_nullptr
    PRIVATE cxx_lambdas
    )

target_include_directories(Context.GoldSource
    PUBLIC .)

target_link_libraries(Context.GoldSource
    Context.Common
    Context.FileSystem
    glm)
