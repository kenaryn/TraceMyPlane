cmake_minimum_required (VERSION 3.25 FATAL_ERROR)

project(trace_my_plane_app VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(tracemyplane
    Coeur_Vol.cpp
)

set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Debug mode enabled")
set(CMAKE_CXX_FLAGS "${CXX_FLAGS} -Wall -Wextra -pedantic -Wshadow -Weffc++ -Wswitch -Wswitch-outside-range -Wstrict-null-sentinel -Wzero-as-null-pointer-constant -Wuseless-cast -Wconversion -Warith-conversion -Wsign-conversion -Wsuggest-override -Wsuggest-final-types -Wsuggest-final-methods -Wsign-promo")

