/* Generated with `/opt/hw/lib2v multisize.lib` */

/* verilator lint_off MULTITOP */
/* verilator lint_off DECLFILENAME */

module AND2_X1(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 & A2);

endmodule

module AND2_X2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 & A2);

endmodule

module AND2_X4(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 & A2);

endmodule

module AND3_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 & A2) & A3);

endmodule

module AND3_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 & A2) & A3);

endmodule

module AND3_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 & A2) & A3);

endmodule

module AND4_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 & A2) & A3) & A4);

endmodule

module AND4_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 & A2) & A3) & A4);

endmodule

module AND4_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 & A2) & A3) & A4);

endmodule

module BUF_X1(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module BUF_X2(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module BUF_X4(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module BUF_X8(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module BUF_X16(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module BUF_X32(
  input wire A,
  output wire Z
);

  assign Z = A;

endmodule

module DFF_X1(
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

module DFF_X2(
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

module INV_X1(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module INV_X2(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module INV_X4(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module INV_X8(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module INV_X16(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module INV_X32(
  input wire A,
  output wire ZN
);

  assign ZN = !A;

endmodule

module NAND2_X1(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 & A2);

endmodule

module NAND2_X2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 & A2);

endmodule

module NAND2_X4(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 & A2);

endmodule

module NAND3_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 & A2) & A3);

endmodule

module NAND3_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 & A2) & A3);

endmodule

module NAND3_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 & A2) & A3);

endmodule

module NAND4_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 & A2) & A3) & A4);

endmodule

module NAND4_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 & A2) & A3) & A4);

endmodule

module NAND4_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 & A2) & A3) & A4);

endmodule

module NOR2_X1(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 | A2);

endmodule

module NOR2_X2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 | A2);

endmodule

module NOR2_X4(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = !(A1 | A2);

endmodule

module NOR3_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 | A2) | A3);

endmodule

module NOR3_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 | A2) | A3);

endmodule

module NOR3_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = !((A1 | A2) | A3);

endmodule

module NOR4_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 | A2) | A3) | A4);

endmodule

module NOR4_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 | A2) | A3) | A4);

endmodule

module NOR4_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = !(((A1 | A2) | A3) | A4);

endmodule

module OR2_X1(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 | A2);

endmodule

module OR2_X2(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 | A2);

endmodule

module OR2_X4(
  input wire A1,
  input wire A2,
  output wire ZN
);

  assign ZN = (A1 | A2);

endmodule

module OR3_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 | A2) | A3);

endmodule

module OR3_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 | A2) | A3);

endmodule

module OR3_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  output wire ZN
);

  assign ZN = ((A1 | A2) | A3);

endmodule

module OR4_X1(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 | A2) | A3) | A4);

endmodule

module OR4_X2(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 | A2) | A3) | A4);

endmodule

module OR4_X4(
  input wire A1,
  input wire A2,
  input wire A3,
  input wire A4,
  output wire ZN
);

  assign ZN = (((A1 | A2) | A3) | A4);

endmodule

module XNOR2_X1(
  input wire A,
  input wire B,
  output wire ZN
);

  assign ZN = !(A ^ B);

endmodule

module XNOR2_X2(
  input wire A,
  input wire B,
  output wire ZN
);

  assign ZN = !(A ^ B);

endmodule

module XOR2_X1(
  input wire A,
  input wire B,
  output wire Z
);

  assign Z = (A ^ B);

endmodule

