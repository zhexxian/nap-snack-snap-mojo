/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamethreeanswerrom_67 (
    input [6:0] address,
    output reg [4:0] answer
  );
  
  
  
  localparam PRIMEORNOTDATA2 = 410'h0210842108421084210842108421084210842108421084210842108421084210842184210842108421084210842108421084210;
  
  always @* begin
    answer = PRIMEORNOTDATA2[(address)*5+4-:5];
  end
endmodule
