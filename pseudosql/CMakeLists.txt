cmake_minimum_required(VERSION 3.12)
project("pseudosql" LANGUAGES C DESCRIPTION "PseudoSQL Library for ROOT-Sim")

set(PROJECT_VERSION 1.1.0)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_VISIBILITY_PRESET hidden)

add_compile_options(-Wall -Wextra -pedantic)

add_subdirectory(src)

# enable_testing()
# add_subdirectory(test)
