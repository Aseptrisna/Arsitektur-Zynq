`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2022 02:18:44 PM
// Design Name: 
// Module Name: full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_tb();
localparam T = 10;
 reg a;
 reg b;
 reg c;
 wire sum;
 wire carry;
 
  full_adder full_adder_0
  (
  .a(a),
  .b(b),
  .c(c),
  .sum(sum),
  .carry(carry)
  );
 
  initial
  begin
  a = 0;
  b = 0;
  c = 0;
  #T;
  a = 0;
  b = 0;
  c = 1;
  #T;
  a = 0;
  b = 1;
  c = 0;
  #T;
  a = 0;
  b = 1;
  c = 1;
  #T;
  a = 1;
  b = 0;
  c = 0;
  #T;
  a = 1;
  b = 0;
  c = 1;
  #T;
  a = 1;
  b = 1;
  c = 0;
  #T;
  a = 1;
  b = 1;
  c = 1;
  #T;
  end

endmodule
