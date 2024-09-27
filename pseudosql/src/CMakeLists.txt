add_library(rspseudosql STATIC utils.c condition_parser.c sql_operations.c rootsim_operations.c)
target_include_directories(rspseudosql PRIVATE . include)

find_library(RSCORE_LIB rscore PATHS include)
find_library(RSTOPOLOGY_LIB rstopology PATHS include)

#find_path(RSCORE_INCLUDE_DIR NAMES ROOT-Sim.h PATH_SUFFIXES rscore)
#find_path(RSTOPOLOGY_INCLUDE_DIR NAMES ROOT-Sim/topology.h PATH_SUFFIXES ./rstopology)

#target_include_directories(rspseudosql PRIVATE ${RSCORE_INCLUDE_DIR} ${RSTOPOLOGY_INCLUDE_DIR})

target_link_libraries(rspseudosql PRIVATE ${RSCORE_LIB} ${RSTOPOLOGY_LIB})

install(DIRECTORY include/ DESTINATION include)
install(TARGETS rspseudosql LIBRARY DESTINATION lib)

add_subdirectory(test_root_sim)
