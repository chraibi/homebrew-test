cmake_minimum_required(VERSION 3.2)
project( testexe )


#set (CMAKE_INSTALL_PREFIX "/usr/local/Cellar")

add_executable(testexe main.cpp)

install(TARGETS testexe DESTINATION bin)
