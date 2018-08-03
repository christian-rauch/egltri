cmake_minimum_required(VERSION 3.10)
project(egltri)

add_definitions(-DUSE_FULL_GL=1)

find_package(OpenGL REQUIRED COMPONENTS OpenGL EGL)
find_package(X11 REQUIRED)

add_executable(${PROJECT_NAME} egltri.c)
target_link_libraries(${PROJECT_NAME} OpenGL::EGL ${X11_LIBRARIES} m)
