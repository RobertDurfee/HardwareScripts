/* Generated with `/opt/hw/lib2v basic.lib` */

/* verilator lint_off MULTITOP */
/* verilator lint_off DECLFILENAME */

module BUF(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module DFF(
  input wire D,
  input wire CK,
  output wire Q,
  output wire QN
);

  reg IQ;
  reg IQN;

  assign Q = IQ;
  assign QN = IQN;

  always @(posedge CK) begin
    IQ <= D;
    IQN <= !D;
  end

endmodule

module INV(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module NAND2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 & A2);

endmodule

