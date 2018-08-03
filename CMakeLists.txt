cmake_minimum_required(VERSION 2.8)
project(egltri)

add_definitions(-DUSE_FULL_GL=1)

find_package(X11 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(Threads REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR} ${X11_INCLUDE_DIR})

add_executable(${PROJECT_NAME} egltri.c)
target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} ${X11_LIBRARIES} m EGL ${CMAKE_THREAD_LIBS_INIT})
