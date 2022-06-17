module $CELL_NAME(
  $INPUTS,
  $OUTPUTS
);

  reg $VARIABLE_1;
  reg $VARIABLE_2;

  $OUTPUT_FUNCTIONS;

  always @(posedge $CLOCKED_ON) begin
    $VARIABLE_1 <= $NEXT_STATE;
    $VARIABLE_2 <= !$NEXT_STATE;
  end

endmodule
