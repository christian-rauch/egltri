cmake_minimum_required(VERSION 2.8)
project(egltri)

add_definitions(-DUSE_FULL_GL=1)

find_package(OpenGL REQUIRED COMPONENTS OpenGL EGL)

include_directories(${OPENGL_INCLUDE_DIR} ${OPENGL_EGL_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} egltri.c)
target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} m)
target_link_libraries(${PROJECT_NAME} EGL)
