/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module decimaltosevenseg_31 (
    input [7:0] a,
    output reg [3:0] out2,
    output reg [3:0] out1,
    output reg [3:0] out0
  );
  
  
  
  always @* begin
    if (a <= 4'h9) begin
      out2 = 4'h0;
      out1 = 4'h0;
      out0 = a[0+3-:4];
    end else begin
      if (a > 4'h9 && a <= 5'h13) begin
        out2 = 4'h0;
        out1 = 4'h1;
        out0 = a - 4'ha;
      end else begin
        if (a > 5'h13 && a <= 5'h1d) begin
          out2 = 4'h0;
          out1 = 4'h2;
          out0 = a - 5'h14;
        end else begin
          if (a > 5'h1d && a <= 6'h27) begin
            out2 = 4'h0;
            out1 = 4'h3;
            out0 = a - 5'h1e;
          end else begin
            if (a > 6'h27 && a <= 6'h31) begin
              out2 = 4'h0;
              out1 = 4'h4;
              out0 = a - 6'h28;
            end else begin
              if (a > 6'h31 && a <= 6'h3b) begin
                out2 = 4'h0;
                out1 = 4'h5;
                out0 = a - 6'h32;
              end else begin
                if (a > 6'h3b && a <= 7'h45) begin
                  out2 = 4'h0;
                  out1 = 4'h6;
                  out0 = a - 6'h3c;
                end else begin
                  if (a > 7'h45 && a <= 7'h4f) begin
                    out2 = 4'h0;
                    out1 = 4'h7;
                    out0 = a - 7'h46;
                  end else begin
                    if (a > 7'h4f && a <= 7'h59) begin
                      out2 = 4'h0;
                      out1 = 4'h8;
                      out0 = a - 7'h50;
                    end else begin
                      if (a > 7'h59 && a <= 7'h63) begin
                        out2 = 4'h0;
                        out1 = 4'h9;
                        out0 = a - 7'h5a;
                      end else begin
                        if (a > 7'h63 && a <= 7'h6d) begin
                          out2 = 4'h1;
                          out1 = 4'h0;
                          out0 = a - 7'h64;
                        end else begin
                          if (a > 7'h6d && a <= 7'h77) begin
                            out2 = 4'h1;
                            out1 = 4'h1;
                            out0 = a - 7'h6e;
                          end else begin
                            if (a > 7'h77 && a <= 8'h81) begin
                              out2 = 4'h1;
                              out1 = 4'h2;
                              out0 = a - 7'h78;
                            end else begin
                              if (a > 8'h81 && a <= 8'h8b) begin
                                out2 = 4'h1;
                                out1 = 4'h3;
                                out0 = a - 8'h82;
                              end else begin
                                if (a > 8'h8b && a <= 8'h95) begin
                                  out2 = 4'h1;
                                  out1 = 4'h4;
                                  out0 = a - 8'h8c;
                                end else begin
                                  if (a > 8'h95 && a <= 8'h9f) begin
                                    out2 = 4'h1;
                                    out1 = 4'h5;
                                    out0 = a - 8'h96;
                                  end else begin
                                    if (a > 8'h9f && a <= 8'ha9) begin
                                      out2 = 4'h1;
                                      out1 = 4'h6;
                                      out0 = a - 8'ha0;
                                    end else begin
                                      if (a > 8'ha9 && a <= 8'hb3) begin
                                        out2 = 4'h1;
                                        out1 = 4'h7;
                                        out0 = a - 8'haa;
                                      end else begin
                                        if (a > 8'hb3 && a <= 8'hbd) begin
                                          out2 = 4'h1;
                                          out1 = 4'h8;
                                          out0 = a - 8'hb4;
                                        end else begin
                                          if (a > 8'hbd && a <= 8'hc7) begin
                                            out2 = 4'h1;
                                            out1 = 4'h9;
                                            out0 = a - 8'hbe;
                                          end else begin
                                            if (a > 8'hc7 && a <= 8'hd1) begin
                                              out2 = 4'h2;
                                              out1 = 4'h0;
                                              out0 = a - 8'hc8;
                                            end else begin
                                              if (a > 8'hd1 && a <= 8'hdb) begin
                                                out2 = 4'h2;
                                                out1 = 4'h1;
                                                out0 = a - 8'hd2;
                                              end else begin
                                                if (a > 8'hdb && a <= 8'he5) begin
                                                  out2 = 4'h2;
                                                  out1 = 4'h2;
                                                  out0 = a - 8'hdc;
                                                end else begin
                                                  if (a > 8'he5 && a <= 8'hef) begin
                                                    out2 = 4'h2;
                                                    out1 = 4'h3;
                                                    out0 = a - 8'he6;
                                                  end else begin
                                                    if (a > 8'hef && a <= 8'hf9) begin
                                                      out2 = 4'h2;
                                                      out1 = 4'h4;
                                                      out0 = a - 8'hf0;
                                                    end else begin
                                                      if (a > 8'hf9 && a <= 9'h103) begin
                                                        out2 = 4'h2;
                                                        out1 = 4'h5;
                                                        out0 = a - 8'hfa;
                                                      end else begin
                                                        out2 = 1'h0;
                                                        out1 = 1'h0;
                                                        out0 = 1'h0;
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
