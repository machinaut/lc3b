all: alu cc

alu: alu.v alu_tb.v
	iverilog -o alu.vvp alu.v alu_tb.v && vvp alu.vvp

cc: cc.v cc_tb.v
	iverilog -o cc.vvp cc.v cc_tb.v && vvp cc.vvp
