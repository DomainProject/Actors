find_library(SQL rspseudosql PATHS ../../build/src)
find_library(ROOTSIM rscore PATHS ../include)
find_library(TOPOLOGY rstopology PATHS ../include)

find_package(MPI REQUIRED)

add_executable(test test_root_sim2.c)
target_include_directories(test PRIVATE ../include)
target_link_libraries(test PRIVATE ${SQL} ${ROOTSIM} ${TOPOLOGY} ${MPI_C_LIBRARIES} m)
target_include_directories(test PRIVATE ${MPI_C_INCLUDE_PATH})
target_compile_options(test PRIVATE ${MPI_C_COMPILE_FLAGS})
