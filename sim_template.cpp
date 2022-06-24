#include "V$MODULE.h"
#include "verilated.h"

int main(int argc, char **argv, char **env) {
  VerilatedContext *context = new VerilatedContext;
  context->commandArgs(argc, argv);

  V$MODULE *top = new V$MODULE { context };

  while (context->time() < 6 || ($STOP)) {
    top->$RESET = (3 <= context->time() && context->time() < 6);
    top->$CLOCK ^= 1;
    top->eval();
    context->timeInc(1);
  }

  delete top;
  delete context;

  return 0;
}
