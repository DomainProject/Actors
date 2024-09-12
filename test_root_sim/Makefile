ROOT_SIM = -L/home/simoneb/thesis/core/build/src -lrscore
TOPOLOGY = -L/home/simoneb/thesis/topology/build/src -lrstopology
PSEUDOSQL = -L/home/simoneb/thesis/pseudo-sql/build/src -lrspseudosql
FLAGS = -Wall -Wextra -Wpedantic

all:
	# clang -c operations.c -o operations.o $(FLAGS)
	# clang -g test_root_sim.c -o test_root_sim $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
	# clang -g test.c -o test $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
	# clang -g test_join.c -o test_join $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
	# clang -g test_windows.c -o test_windows $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
	clang -g test_root_sim2.c -o test_root_sim2 $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
	# clang -g test_count.c -o test_count $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
	# clang -g test_select.c -o test_select $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm

clean:
	rm test_root_sim
