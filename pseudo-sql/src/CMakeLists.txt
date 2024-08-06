add_library(rspseudosql STATIC utils.c condition_parser.c sql_operations.c)
target_include_directories(rspseudosql PRIVATE . include)

install(DIRECTORY include/ DESTINATION include)
install(TARGETS rspseudosql LIBRARY DESTINATION lib)
