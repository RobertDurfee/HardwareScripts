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

  while ($STOP) {
    context->timeInc(1);
    top->$CLOCK = ~top->$CLOCK;
    top->eval();
    trace->dump(context->time());
  }

  trace->close();

  delete trace;
  delete top;
  delete context;

  return 0;
}
