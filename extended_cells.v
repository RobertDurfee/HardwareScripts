/* Generated with `/opt/hw/lib2v extended.lib` */

/* verilator lint_off MULTITOP */
/* verilator lint_off DECLFILENAME */

module AND2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 & A2);

endmodule

module AND3(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 & A2) & A3);

endmodule

module AND4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 & A2) & A3) & A4);

endmodule

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

module NAND3(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 & A2) & A3);

endmodule

module NAND4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 & A2) & A3) & A4);

endmodule

module NOR2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 | A2);

endmodule

module NOR3(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 | A2) | A3);

endmodule

module NOR4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 | A2) | A3) | A4);

endmodule

module OR2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 | A2);

endmodule

module OR3(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 | A2) | A3);

endmodule

module OR4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 | A2) | A3) | A4);

endmodule

module XNOR2(
  input wire A,
  input wire B,
  output wire ZN
);

  assign ZN = !(A ^ B);

endmodule

