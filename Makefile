all: alu

alu: alu.v alu_tb.v
	iverilog -o alu.vvp alu.v alu_tb.v && vvp alu.vvp
