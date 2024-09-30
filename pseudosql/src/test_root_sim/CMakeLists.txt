find_library(ROOTSIM rscore PATHS ../include)
find_library(TOPOLOGY rstopology PATHS ../include)

find_package(MPI REQUIRED)

add_executable(test test_root_sim2.c ../utils.c ../condition_parser.c ../sql_operations.c ../rootsim_operations.c)
target_include_directories(test PRIVATE ../include)
target_link_libraries(test PRIVATE ${ROOTSIM} ${TOPOLOGY} ${MPI_C_LIBRARIES} m)
target_include_directories(test PRIVATE ${MPI_C_INCLUDE_PATH})
target_compile_options(test PRIVATE ${MPI_C_COMPILE_FLAGS})
