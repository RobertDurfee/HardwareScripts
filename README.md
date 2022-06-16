# HardwareScripts

Provides the `hw` script for quick-and-dirty evaluating, simulating, and
synthesizing of SystemVerilog snippets. This script borrows code from the `ms`
script for [Minispec](https://github.com/minispec-hdl/minispec).

## Setup

The `hw` script is a Python script that requires no building or configuration.

An example installation sequence might look like:

    $ git clone https://github.com/RobertDurfee/HardwareScripts
    $ mv HardwareScripts /opt/hw
    $ echo 'export PATH:/opt/hw:$PATH' >>~/.zshrc
    $ source ~/.zshrc

**Dependencies**:

- [`python3`](https://www.python.org/downloads/) interpreter with typing
  support.
- [`verilator`](https://github.com/verilator/verilator) for evaluation and
  simulation.
- [`sv2v`](https://github.com/zachjs/sv2v) for SystemVerilog to Verilog
  conversion for synthesis.
- [`yosys`](https://github.com/YosysHQ/yosys) for synthesis.

**Versions from my environment**:

    $ python3 --version
    Python 3.9.13
    $ verilator --version
    Verilator 4.222 2022-05-02 rev UNKNOWN.REV
    $ sv2v --version
    sv2v v0.0.9-31-geffeded
    $ yosys --version
    Yosys 0.18 (git sha1 19ce3b45d6a, clang 13.1.6 -fPIC -Os)

## Basic Commands

### Evaluate

Evaluate a SystemVerilog expression.

**Basic command syntax**:

    $ hw eval <FILE> <EXPRESSION>

- `<FILE>`: file necessary to include for evaluation.
- `<EXPRESSION>`: SystemVerilog expression to evaluate and display.

**Example**:

    $ cat >FullAdder.sv <<'EOF'
    function bit [1:0] full_adder(bit a, bit b, bit cin);
      return {
        a & b | a & cin | b & cin,
        a ^ b ^ cin
      };
    endfunction
    EOF
    $ hw eval FullAdder.sv 'full_adder(0, 1, 1)'
    full_adder(0, 1, 1) = 2

### Simulate

Simulate a SystemVerilog module.

**Basic command syntax**:

    $ hw sim <FILE>

- `<FILE>`: file containing module to simulate. Name of the file must be the
  same as the module name.

**Example**:

    $ cat >FullAdder.sv <<'EOF'
    function bit [1:0] full_adder(bit a, bit b, bit cin);
      return {
        a & b | a & cin | b & cin,
        a ^ b ^ cin
      };
    endfunction
    EOF
    $ cat >FullAdderTest.sv <<'EOF'
    `include "FullAdder.sv"

    module FullAdderTest(
      input bit clk
    );

      bit failed = 0;
      bit [2:0] x = 3'b000;

      always_ff @(posedge clk) begin
        bit [1:0] expected = {1'b0, x[2]} + {1'b0, x[1]} + {1'b0, x[0]};
        bit [1:0] actual = full_adder(x[2], x[1], x[0]);

        if (expected == actual) begin
          $display("full_adder(%d, %d, %d) = %d",
                   x[2], x[1], x[0], actual);
        end else begin
          $display("full_adder(%d, %d, %d) = %d (ERROR: expected %d)",
                   x[2], x[1], x[0], actual, expected);
          failed <= 1;
        end

        if (x == 3'b111) begin
          $display("\n%s", failed ? "FAILED" : "PASSED");
          $finish;
        end else begin
          x <= x + 1;
        end
      end

    endmodule
    EOF
    $ hw sim FullAdderTest.sv
    full_adder(0, 0, 0) = 0
    full_adder(0, 0, 1) = 1
    full_adder(0, 1, 0) = 1
    full_adder(0, 1, 1) = 2
    full_adder(1, 0, 0) = 1
    full_adder(1, 0, 1) = 2
    full_adder(1, 1, 0) = 2
    full_adder(1, 1, 1) = 3

    PASSED

### Synthesize

Synthesize a SystemVerilog function or module.

**Basic command syntax**:

    $ hw synth <FILE> <TOP>

- `<FILE>`: file necessary to include for synthesis.
- `<TOP>`: name of top-level function or module to synthesize. If the first
  character is lowercase, a function is assumed and will be wrapped in a simple
  module.

**Example**:

    $ cat >FullAdder.sv <<'EOF'
    function bit [1:0] full_adder(bit a, bit b, bit cin);
      return {
        a & b | a & cin | b & cin,
        a ^ b ^ cin
      };
    endfunction
    EOF
    $ hw synth FullAdder.sv full_adder
    Synthesizing function full_adder with library = multisize, O1, target delay = 1 ps

    Gates: 9
    Area: 8.51 um^2
    Critical-path delay: 48.4 ps

    Critical path: \b -> \out [0]

                  Gate/port  Fanout   Gate delay (ps)  Cumulative delay (ps)
                  ---------  ------   ---------------  ---------------------
                         IN       3               8.4                    8.4
                     OR2_X2       2              23.6                   32.0
                   NAND3_X1       1               8.5                   40.5
                   NAND2_X1       1               7.9                   48.4
                        OUT       0               0.0                   48.4

    Area breakdown:

                  Gate type   Gates  Area/gate (um^2)       Area/type (um^2)
                  ---------   -----  ----------------       ----------------
                     INV_X1       1             0.532                  0.532
                   NAND2_X1       5             0.798                  3.990
                   NAND3_X1       1             1.064                  1.064
                     OR2_X2       1             1.330                  1.330
                   XNOR2_X1       1             1.596                  1.596
                      Total       9               nan                  8.512

    Synthesis complete
