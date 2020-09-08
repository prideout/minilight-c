cmake_minimum_required(VERSION 3.9)
project(minilight)

find_package(bullet HINTS /usr/local/Cellar/bullet/2.88_1/lib/cmake/bullet)
find_package(glfw3 HINTS /usr/local/Cellar/glfw/3.3.2/lib/cmake/glfw3)
find_library(COCOA_LIBRARY Cocoa)

set(CORE_SRCS
    src/Camera.c
    src/Camera.h
    src/Exceptions.c
    src/Exceptions.h
    src/Image.c
    src/Image.h
    src/MiniLight.c
    src/Primitives.h
    src/Random.c
    src/Random.h
    src/RayTracer.c
    src/RayTracer.h
    src/Scene.c
    src/Scene.h
    src/SpatialIndex.c
    src/SpatialIndex.h
    src/SurfacePoint.c
    src/SurfacePoint.h
    src/Triangle.c
    src/Triangle.h
    src/Vector3f.c
    src/Vector3f.h)

add_executable(minilight ${CORE_SRCS})

set_property(TARGET minilight PROPERTY CXX_STANDARD 14)
