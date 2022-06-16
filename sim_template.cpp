#include "V$MODULE.h"
#include "verilated.h"

int main(int argc, char **argv, char **env) {
  VerilatedContext *context = new VerilatedContext;
  context->commandArgs(argc, argv);

  V$MODULE *dut = new V$MODULE { context };

  while (!context->gotFinish()) {
    dut->$CLOCK = ~dut->$CLOCK;
    dut->eval();
  }

  delete dut;
  delete context;

  return 0;
}
