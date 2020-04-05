add_library(Context.FileSystem
    File.cpp
    FileFromDirectory.cpp
    FileFromMemory.cpp
    FilePath.cpp
    FileSystem.cpp
    Item.cpp
    Package.cpp
    PackageFromDirectory.cpp
    PackageFromPak.cpp
    PackageFromWad.cpp)

target_compile_features(Context.FileSystem
    PRIVATE cxx_auto_type
    PRIVATE cxx_nullptr
    PRIVATE cxx_lambdas)

target_include_directories(Context.FileSystem
    PUBLIC .)

target_link_libraries(Context.FileSystem
    CONAN_PKG::glm)
