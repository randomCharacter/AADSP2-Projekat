cmake_minimum_required(VERSION 3.10)
project(model0)

set(CMAKE_CXX_STANDARD 11)

include_directories(ProcessWavFile)

add_executable(model0
        ProcessWavFile/main.cpp
        ProcessWavFile/WAVheader.cpp
        ProcessWavFile/WAVheader.h)
