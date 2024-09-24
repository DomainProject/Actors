ROOT_SIM = -L/home/simoneb/thesis/core/build/src -lrscore
TOPOLOGY = -L/home/simoneb/thesis/topology/build/src -lrstopology
PSEUDOSQL = -L/home/simoneb/thesis/pseudo-sql/build/src -lrspseudosql
FLAGS = -Wall -Wextra -Wpedantic

all:
	clang -g test_root_sim2.c -o test_root_sim2 $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
clean:
	rm -f test_root_sim2
	rm -f Query*.csv
