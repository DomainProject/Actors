ROOT_SIM = -L/home/pellegrini/git/Domain/Actors/pseudosql/src/include/ -lrscore
TOPOLOGY = -L/home/pellegrini/git/Domain/Actors/pseudosql/src/include/ -lrstopology
PSEUDOSQL = -L/home/pellegrini/git/Domain/Actors/pseudosql/build/src/ -lrspseudosql
FLAGS = -Wall -Wextra -Wpedantic -I/home/pellegrini/git/Domain/Actors/pseudosql/src/include

all:
	mpicc -g test_root_sim2.c -o test_root_sim2 $(FLAGS) $(PSEUDOSQL) $(ROOT_SIM) $(TOPOLOGY) -lm
clean:
	rm -f test_root_sim2
	rm -f Query*.csv
