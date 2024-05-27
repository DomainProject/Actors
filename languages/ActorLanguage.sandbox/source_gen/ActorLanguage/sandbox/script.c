#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>

#define SIZE 100
#define BUFFER_SIZE 1024

typedef struct {
  int address;
  int write_fd;
  pthread_mutex_t mutex;
} map_item;

typedef struct {
  map_item *map;
  int read_fd;
  int write_fd;
} ThreadData;

pthread_mutex_t map_mutex;

void create_thread(int address, map_item *map, void *(*start_routine) (void *), pthread_t *thread) {
  ThreadData *thread_data = malloc(sizeof(ThreadData));
  if (!thread_data) {
    perror("malloc");
    exit(EXIT_FAILURE);
  }

  int pipe_fd[2];

  if (pipe(pipe_fd)) {
    perror("pipe");
    exit(EXIT_FAILURE);
  }

  thread_data->read_fd = pipe_fd[0];
  thread_data->write_fd = pipe_fd[1];

  pthread_mutex_lock(&map_mutex);
  map[address].write_fd = pipe_fd[1];
  if (pthread_mutex_init(&map[address].mutex, NULL) != 0) {
    perror("pthread_mutex_init");
    exit(EXIT_FAILURE);
  }

  thread_data->map = map;
  pthread_mutex_unlock(&map_mutex);

  pthread_create(thread, NULL, start_routine, (void *)thread_data);
}

<!TextGen not found for 'ActorLanguage.structure.CreateEnvelope'!><!TextGen not found for 'ActorLanguage.structure.CreatePayload'!>// message to send
// message to send
tag:
pthread_mutex_lock(&data->map[receiver_address].mutex);
bytes_written = write(data->map[receiver_address].write_fd, m1, strlen(m1));
if (bytes_written == -1) {
  perror("write");
  pthread_mutex_unlock(&data->map[receiver_address].mutex);
  exit(EXIT_FAILURE);
}
pthread_mutex_unlock(&data->map[receiver_address].mutex);

tag:
pthread_mutex_lock(&data->map[receiver_address].mutex);
bytes_written = write(data->map[receiver_address].write_fd, m2, strlen(m2));
if (bytes_written == -1) {
  perror("write");
  pthread_mutex_unlock(&data->map[receiver_address].mutex);
  exit(EXIT_FAILURE);
}
pthread_mutex_unlock(&data->map[receiver_address].mutex);

// message to send
void *a1(void *arg) {
}

<!TextGen not found for 'ActorLanguage.structure.Fetch'!><!TextGen not found for 'ActorLanguage.structure.Fetch'!>// message to send
<!TextGen not found for 'ActorLanguage.structure.ReplyToMessage'!><!TextGen not found for 'ActorLanguage.structure.ReplyToMessage'!>void *a2(void *arg) {
}

void *a3(void *arg) {
}

void *a4(void *arg) {
}


int main() {
  int num_threads = 4;
  pthread_t threads[num_threads];
  int i;
  int addresses[4];
  addresses[0] = 1;
  addresses[1] = 2;
  addresses[2] = 3;
  addresses[3] = 4;

  pthread_mutex_init(&map_mutex, NULL);

  map_item *map = malloc(sizeof(map_item)*SIZE);
  if (!map) {
    perror("malloc");
    exit(EXIT_FAILURE);
  }

  for (int i = 0; i < SIZE; ++i) {
    pthread_mutex_init(&map[i].mutex, NULL);
  }
  create_thread(addresses[0], map, a1, &threads[0]);
  create_thread(addresses[1], map, a2, &threads[1]);
  create_thread(addresses[2], map, a3, &threads[2]);
  create_thread(addresses[3], map, a4, &threads[3]);

  for (int i = 0; i < num_threads; i++) {
    pthread_join(threads[i], NULL);
  }

  free(map);
  return 0;
}