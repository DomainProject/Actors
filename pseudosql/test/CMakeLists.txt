include(FetchContent)
FetchContent_Declare(rstest
        GIT_REPOSITORY https://github.com/ROOT-Sim/testing-framework.git
        GIT_TAG origin/master
        )
FetchContent_MakeAvailable(rstest)

test_program(selection selection.c)
target_include_directories(test_selection PRIVATE ${CMAKE_SOURCE_DIR}/src/include)
target_link_libraries(test_selection rspseudosql)

test_program(projection projection.c)
target_include_directories(test_projection PRIVATE ${CMAKE_SOURCE_DIR}/src/include)
target_link_libraries(test_projection rspseudosql)

test_program(groupby groupby.c)
target_include_directories(test_groupby PRIVATE ${CMAKE_SOURCE_DIR}/src/include)
target_link_libraries(test_groupby rspseudosql)

test_program(orderby orderby.c)
target_include_directories(test_orderby PRIVATE ${CMAKE_SOURCE_DIR}/src/include)
target_link_libraries(test_orderby rspseudosql)

test_program(aggregate_functions aggregate_functions.c)
target_include_directories(test_aggregate_functions PRIVATE ${CMAKE_SOURCE_DIR}/src/include)
target_link_libraries(test_aggregate_functions rspseudosql)

test_program(join join.c)
target_include_directories(test_join PRIVATE ${CMAKE_SOURCE_DIR}/src/include)
target_link_libraries(test_join rspseudosql)
