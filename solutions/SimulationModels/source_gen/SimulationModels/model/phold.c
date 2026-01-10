#include <ROOT-Sim.h>
#include <ROOT-Sim/random.h>
#include <phold.h>
#ifndef NUM_LPS
#define NUM_LPS 5000
#endif

#ifndef NUM_THREADS
#define NUM_THREADS 0
#endif

typedef struct Envelope {
  lp_id_t sender;
  float priority;
} Envelope;

typedef struct Message {
  Envelope envelope;
  struct phold_message payload;
} Message;

int32_t start_events = 1;
double p_remote = 0.25;
double mean = 1.0;
double lookahead = 0.0;
uint32_t num_lps = 5000;
#define DURATION 100


static void phold(lp_id_t me, simtime_t now, void *message, void *state)
{
  struct phold_state *s = ((struct phold_state *)((state)));
  s->complete_events++;
  busy_loop(DURATION);
  
  lp_id_t dest = me;
  if (Random(&s->ctx) <= p_remote) 
  {
    dest = ((lp_id_t)((Random(&s->ctx) * num_lps)));
  }
  struct phold_message new_event = { 0 };
  Envelope e = {
    .priority = 5.0,
    .sender = me
  };
  Message new_msg = {
    .envelope = e,
    .payload = new_event
  };

  ScheduleNewEvent(dest, now + Expent(&s->ctx, mean) + lookahead, EVENT, &new_msg, sizeof(Message));
}

void ProcessEvent(lp_id_t me, simtime_t now, unsigned event_type, const void *msg, unsigned size, void *state)
{
  switch(me) {
    case 0 ... 4999: {
      /* phold */
      switch(event_type) {
        case LP_INIT: {
          // INITIALIZING STATE
          struct phold_state *state_to_init = (struct phold_state *)state;
          state_to_init = rs_malloc(sizeof(*state_to_init));
          if (state_to_init == NULL)
            abort();
          initialize_stream(me, &state_to_init->ctx);
          SetState(state_to_init);
          state = state_to_init;

          struct phold_state *s = ((struct phold_state *)((state)));
          struct phold_message new_event = { 0 };
          
          Envelope e = {
            .priority = 5.0,
            .sender = me
          };

          Message new_msg = {
            .envelope = e,
            .payload = new_event
          };

          for ( int32_t i = 0 ; i < start_events; i++ )
          {
            ScheduleNewEvent(me, Expent(&s->ctx, mean) + lookahead, EVENT, &new_msg, sizeof(Message));
          }


          break;
        }
        case EVENT: {
          phold(me, now, msg, state);
          break;
        }
        case LP_FINI: {
          break;
        }
      default:
        fprintf(stderr, "[ERROR]: EVENT TYPE %u UNKNOWN", event_type);
        puts("");
        abort();
      }
    }
  }
}
bool CanEnd(lp_id_t me, const void *snapshot) {
  switch(me) {
    case 0 ... 4999: {
        return false;
    }
    default:
        return true;
  }
}

struct simulation_configuration conf = {
  .lps = 5000,
  .n_threads = 1,
  .termination_time = 0,
  .gvt_period = 1000,
  .log_level = LOG_INFO,
  .stats_file = "stats",
  .ckpt_interval = 0,
  .core_binding = true,
  .serial = false,
  .dispatcher = ProcessEvent,
  .committed = CanEnd,
};

int main(int argc, char *argv[]) {
  if (argc != 4) {
    printf("Usage: %s <n_threads> <termination_time> <gvt_period>", argv[0]);
    exit(1);
  }
  conf.n_threads = atoi(argv[1]);
  conf.termination_time = atoi(argv[2]);
  conf.gvt_period = atoi(argv[3]);


  RootsimInit(&conf);
  int ret = RootsimRun();
  return ret;
}

