# cmake_minimum_required(VERSION 3.9)
# project(client)

# set(CMAKE_CXX_STANDARD 11)

include_directories(${PROJECT_SOURCE_DIR}/src/common)
include_directories(${PROJECT_SOURCE_DIR}/thirdparty)

link_directories(${PROJECT_SOURCE_DIR}/lib)

add_executable(client main.cpp receFile.h RecvManager.h RecvManager.cpp SendManager.h SendManager.cpp TrafficControlManager.cpp TrafficControlManager.h receFile.cpp)

# 设置输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

find_package(Threads REQUIRED)
target_link_libraries(client Threads::Threads common)