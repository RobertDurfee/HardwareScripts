#INCLUDES

module Eval;

  always_comb begin
    $display("#EXPRESSION = #FORMAT", #EXPRESSION);
  end

endmodule
