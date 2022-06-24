#include "V$MODULE.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char **argv, char **env) {
  VerilatedContext *context = new VerilatedContext;
  context->commandArgs(argc, argv);

  V$MODULE *top = new V$MODULE { context };

  context->traceEverOn(true);
  VerilatedVcdC *trace = new VerilatedVcdC;
  top->trace(trace, $DEPTH);
  trace->open("$TRACE");

  while (context->time() < 6 || ($STOP)) {
    top->$RESET = (3 <= context->time() && context->time() < 6);
    top->$CLOCK ^= 1;
    top->eval();
    trace->dump(context->time());
    context->timeInc(1);
  }

  trace->close();

  delete trace;
  delete top;
  delete context;

  return 0;
}
