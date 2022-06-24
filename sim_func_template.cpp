#include "V$MODULE.h"
#include "verilated.h"

int main(int argc, char **argv, char **env) {
  VerilatedContext *context = new VerilatedContext;
  context->commandArgs(argc, argv);

  V$MODULE *top = new V$MODULE { context };

  top->eval();

  delete top;
  delete context;

  return 0;
}
