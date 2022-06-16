#INCLUDES

module Eval(
  input bit clk
);

  always_ff @(posedge clk) begin
    $display("#EXPRESSION = #FORMAT", #EXPRESSION);
    $finish;
  end

endmodule
