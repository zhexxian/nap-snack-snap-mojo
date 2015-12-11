/*
   This file was generated automatically by the Mojo IDE version B1.2.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gameonemanager_27 (
    input clk,
    input rst,
    input start,
    input [2:0] playeronebuttons,
    input [2:0] playertwobuttons,
    input [2:0] playerthreebuttons,
    input [7:0] aluout,
    output reg [5:0] alufn,
    output reg [7:0] alua,
    output reg [7:0] alub,
    output reg [7:0] centralsevenseg,
    output reg [5:0] playerleds
  );
  
  
  
  localparam STARTCOUNTDOWN_gameonestate = 4'd0;
  localparam PLAYERONE_gameonestate = 4'd1;
  localparam PLAYERTWO_gameonestate = 4'd2;
  localparam PLAYERTHREE_gameonestate = 4'd3;
  localparam PLAYERONEWIN_gameonestate = 4'd4;
  localparam PLAYERTWOWIN_gameonestate = 4'd5;
  localparam PLAYERTHREEWIN_gameonestate = 4'd6;
  localparam ALLLOSE_gameonestate = 4'd7;
  
  reg [3:0] M_gameonestate_d, M_gameonestate_q = STARTCOUNTDOWN_gameonestate;
  wire [1-1:0] M_gameonecountdowntimer_timerdone;
  wire [3-1:0] M_gameonecountdowntimer_value;
  reg [1-1:0] M_gameonecountdowntimer_start;
  countdowntimer_47 gameonecountdowntimer (
    .clk(clk),
    .rst(rst),
    .start(M_gameonecountdowntimer_start),
    .timerdone(M_gameonecountdowntimer_timerdone),
    .value(M_gameonecountdowntimer_value)
  );
  wire [8-1:0] M_gameonedecreasecounter_alub;
  wire [6-1:0] M_gameonedecreasecounter_alufn;
  wire [1-1:0] M_gameonedecreasecounter_gameone_end;
  wire [1-1:0] M_gameonedecreasecounter_gameone_lose;
  wire [8-1:0] M_gameonedecreasecounter_remainder;
  reg [1-1:0] M_gameonedecreasecounter_start;
  reg [1-1:0] M_gameonedecreasecounter_decrease;
  reg [2-1:0] M_gameonedecreasecounter_decreaseamount;
  reg [8-1:0] M_gameonedecreasecounter_aluout;
  gameonedecreasecounter_48 gameonedecreasecounter (
    .clk(clk),
    .rst(rst),
    .start(M_gameonedecreasecounter_start),
    .decrease(M_gameonedecreasecounter_decrease),
    .decreaseamount(M_gameonedecreasecounter_decreaseamount),
    .aluout(M_gameonedecreasecounter_aluout),
    .alub(M_gameonedecreasecounter_alub),
    .alufn(M_gameonedecreasecounter_alufn),
    .gameone_end(M_gameonedecreasecounter_gameone_end),
    .gameone_lose(M_gameonedecreasecounter_gameone_lose),
    .remainder(M_gameonedecreasecounter_remainder)
  );
  
  always @* begin
    M_gameonestate_d = M_gameonestate_q;
    
    alufn = M_gameonedecreasecounter_alufn;
    alua = M_gameonedecreasecounter_remainder;
    alub = M_gameonedecreasecounter_alub;
    M_gameonedecreasecounter_aluout = aluout;
    M_gameonedecreasecounter_start = 1'h0;
    M_gameonedecreasecounter_decrease = 1'h0;
    M_gameonedecreasecounter_decreaseamount = 1'h0;
    M_gameonecountdowntimer_start = 1'h0;
    centralsevenseg = M_gameonedecreasecounter_remainder;
    playerleds = 1'h0;
    if (start) begin
      M_gameonecountdowntimer_start = 1'h1;
      M_gameonedecreasecounter_start = 1'h1;
      M_gameonestate_d = STARTCOUNTDOWN_gameonestate;
    end
    
    case (M_gameonestate_q)
      STARTCOUNTDOWN_gameonestate: begin
        centralsevenseg = M_gameonecountdowntimer_value;
        if (M_gameonecountdowntimer_timerdone) begin
          M_gameonestate_d = PLAYERONE_gameonestate;
        end
      end
      PLAYERONE_gameonestate: begin
        if (playeronebuttons[0+0-:1]) begin
          M_gameonedecreasecounter_decrease = 1'h1;
          M_gameonedecreasecounter_decreaseamount = 2'h1;
          M_gameonestate_d = PLAYERTWO_gameonestate;
        end else begin
          if (playeronebuttons[1+0-:1]) begin
            M_gameonedecreasecounter_decrease = 1'h1;
            M_gameonedecreasecounter_decreaseamount = 2'h2;
            M_gameonestate_d = PLAYERTWO_gameonestate;
          end else begin
            if (playeronebuttons[2+0-:1]) begin
              M_gameonedecreasecounter_decrease = 1'h1;
              M_gameonedecreasecounter_decreaseamount = 2'h3;
              M_gameonestate_d = PLAYERTWO_gameonestate;
            end
          end
        end
        if (M_gameonedecreasecounter_gameone_end) begin
          M_gameonestate_d = PLAYERTHREEWIN_gameonestate;
        end else begin
          if (M_gameonedecreasecounter_gameone_lose) begin
            M_gameonestate_d = ALLLOSE_gameonestate;
          end
        end
      end
      PLAYERTWO_gameonestate: begin
        if (playertwobuttons[0+0-:1]) begin
          M_gameonedecreasecounter_decrease = 1'h1;
          M_gameonedecreasecounter_decreaseamount = 2'h1;
          M_gameonestate_d = PLAYERTHREE_gameonestate;
        end else begin
          if (playertwobuttons[1+0-:1]) begin
            M_gameonedecreasecounter_decrease = 1'h1;
            M_gameonedecreasecounter_decreaseamount = 2'h2;
            M_gameonestate_d = PLAYERTHREE_gameonestate;
          end else begin
            if (playertwobuttons[2+0-:1]) begin
              M_gameonedecreasecounter_decrease = 1'h1;
              M_gameonedecreasecounter_decreaseamount = 2'h3;
              M_gameonestate_d = PLAYERTHREE_gameonestate;
            end
          end
        end
        if (M_gameonedecreasecounter_gameone_end) begin
          M_gameonestate_d = PLAYERONEWIN_gameonestate;
        end else begin
          if (M_gameonedecreasecounter_gameone_lose) begin
            M_gameonestate_d = ALLLOSE_gameonestate;
          end
        end
      end
      PLAYERTHREE_gameonestate: begin
        if (playerthreebuttons[0+0-:1]) begin
          M_gameonedecreasecounter_decrease = 1'h1;
          M_gameonedecreasecounter_decreaseamount = 2'h1;
          M_gameonestate_d = PLAYERONE_gameonestate;
        end else begin
          if (playerthreebuttons[1+0-:1]) begin
            M_gameonedecreasecounter_decrease = 1'h1;
            M_gameonedecreasecounter_decreaseamount = 2'h2;
            M_gameonestate_d = PLAYERONE_gameonestate;
          end else begin
            if (playerthreebuttons[2+0-:1]) begin
              M_gameonedecreasecounter_decrease = 1'h1;
              M_gameonedecreasecounter_decreaseamount = 2'h3;
              M_gameonestate_d = PLAYERONE_gameonestate;
            end
          end
        end
        if (M_gameonedecreasecounter_gameone_end) begin
          M_gameonestate_d = PLAYERTWOWIN_gameonestate;
        end else begin
          if (M_gameonedecreasecounter_gameone_lose) begin
            M_gameonestate_d = ALLLOSE_gameonestate;
          end
        end
      end
      PLAYERONEWIN_gameonestate: begin
        playerleds = 6'h25;
        if (playeronebuttons[0+0-:1] || playeronebuttons[1+0-:1] || playeronebuttons[2+0-:1] || playertwobuttons[0+0-:1] || playertwobuttons[1+0-:1] || playertwobuttons[2+0-:1] || playerthreebuttons[0+0-:1] || playerthreebuttons[1+0-:1] || playerthreebuttons[2+0-:1]) begin
          M_gameonecountdowntimer_start = 1'h1;
          M_gameonedecreasecounter_start = 1'h1;
          M_gameonestate_d = STARTCOUNTDOWN_gameonestate;
        end
      end
      PLAYERTWOWIN_gameonestate: begin
        playerleds = 6'h19;
        if (playeronebuttons[0+0-:1] || playeronebuttons[1+0-:1] || playeronebuttons[2+0-:1] || playertwobuttons[0+0-:1] || playertwobuttons[1+0-:1] || playertwobuttons[2+0-:1] || playerthreebuttons[0+0-:1] || playerthreebuttons[1+0-:1] || playerthreebuttons[2+0-:1]) begin
          M_gameonecountdowntimer_start = 1'h1;
          M_gameonedecreasecounter_start = 1'h1;
          M_gameonestate_d = STARTCOUNTDOWN_gameonestate;
        end
      end
      PLAYERTHREEWIN_gameonestate: begin
        playerleds = 6'h16;
        if (playeronebuttons[0+0-:1] || playeronebuttons[1+0-:1] || playeronebuttons[2+0-:1] || playertwobuttons[0+0-:1] || playertwobuttons[1+0-:1] || playertwobuttons[2+0-:1] || playerthreebuttons[0+0-:1] || playerthreebuttons[1+0-:1] || playerthreebuttons[2+0-:1]) begin
          M_gameonecountdowntimer_start = 1'h1;
          M_gameonedecreasecounter_start = 1'h1;
          M_gameonestate_d = STARTCOUNTDOWN_gameonestate;
        end
      end
      ALLLOSE_gameonestate: begin
        playerleds = 6'h15;
        if (playeronebuttons[0+0-:1] || playeronebuttons[1+0-:1] || playeronebuttons[2+0-:1] || playertwobuttons[0+0-:1] || playertwobuttons[1+0-:1] || playertwobuttons[2+0-:1] || playerthreebuttons[0+0-:1] || playerthreebuttons[1+0-:1] || playerthreebuttons[2+0-:1]) begin
          M_gameonecountdowntimer_start = 1'h1;
          M_gameonedecreasecounter_start = 1'h1;
          M_gameonestate_d = STARTCOUNTDOWN_gameonestate;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_gameonestate_q <= 1'h0;
    end else begin
      M_gameonestate_q <= M_gameonestate_d;
    end
  end
  
endmodule
