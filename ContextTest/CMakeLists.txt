add_executable(Context.ContextTest
    ContextTest.cpp
    main.cpp)

target_compile_features(Context.ContextTest
    PRIVATE cxx_auto_type
    PRIVATE cxx_nullptr
    PRIVATE cxx_lambdas
    )

target_include_directories(Context.ContextTest
    PRIVATE ../Common)

target_link_libraries(Context.ContextTest
    Context.Context
    Context.Common
    glm
    ${OPENGL_LIBRARIES}
)
