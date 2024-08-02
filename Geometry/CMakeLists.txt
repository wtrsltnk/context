add_library(Context.Geometry
    Brush.cpp
    Entity.cpp
    MapLoader.cpp
    Scene.cpp)

target_compile_features(Context.Geometry
    PRIVATE cxx_auto_type
    PRIVATE cxx_nullptr
    PRIVATE cxx_lambdas
    )

target_link_libraries(Context.Geometry
    Context.Common
    glm)
