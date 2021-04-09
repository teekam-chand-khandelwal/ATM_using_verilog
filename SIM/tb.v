`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:57:19 04/09/2021
// Design Name:   newatm1
// Module Name:   C:/Users/khand/Documents/Custom Office Templates/atm_machine/tb.v
// Project Name:  atm_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: newatm1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg wen;
	reg ren;
	reg [39:0] ip;
	reg [3:0] locn;
	reg clk;
	reg rst;
	reg [7:0] userpswd;
	reg [15:0] useractno;
	reg [15:0] useramt;
	reg [1:0] lang;
	reg ch;
	reg tr;

	// Outputs
	wire invalid;
	wire invalidpswd;
	wire nobalance;

	// Instantiate the Unit Under Test (UUT)
	newatm1 uut (
		.wen(wen), 
		.ren(ren), 
		.ip(ip), 
		.locn(locn), 
		.clk(clk), 
		.rst(rst), 
		.userpswd(userpswd), 
		.useractno(useractno), 
		.useramt(useramt), 
		.invalid(invalid), 
		.invalidpswd(invalidpswd), 
		.nobalance(nobalance), 
		.lang(lang), 
		.ch(ch), 
		.tr(tr)
	);

	initial begin
		// Initialize Inputs
		wen = 0;
		ren = 0;
		ip = 0;
		locn = 0;
		clk = 0;
		rst = 0;
		userpswd = 0;
		useractno = 0;
		useramt = 0;
		lang = 0;
		ch = 0;
		tr = 0;
		
		forever #20 clk=~clk;
		
		end
		
		initial begin
		rst=1;
		#40;
		rst=0;
		wen=1;
		locn=1;
		ip=40'haaaa_23_aaaa;
		
		#40;
		wen=0;
		ren=1;
		useractno<=16'haaaa;
		userpswd<=8'h23;
		useramt<=16'h1000;
		lang=0;
		ch=0;//for balance inquray
      //ch=1 for withdrawl 
		tr=0;
		
		end

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here


      
endmodule

