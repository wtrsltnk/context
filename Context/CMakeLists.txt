add_library(Context.Context
    GlContext.cpp
    UserInput.h
    KeyboardState.hpp
    KeyboardState.cpp
    MouseState.hpp
    MouseState.cpp
)

target_compile_features(Context.Context
    PRIVATE cxx_auto_type
    PRIVATE cxx_nullptr
    PRIVATE cxx_lambdas
    )

target_sources(Context.Context
    PUBLIC GlContext.h
    PUBLIC UserInput.h)

target_include_directories(Context.Context
    PUBLIC .
    PRIVATE ../Common)

target_link_libraries(Context.Context
    PRIVATE glm)
