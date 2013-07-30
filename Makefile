all: alu cc

alu: alu.v alu_tb.v
	iverilog -o alu.vvp alu.v alu_tb.v && vvp alu.vvp

cc: cc.v cc_tb.v
	iverilog -o cc.vvp cc.v cc_tb.v && vvp cc.vvp

regs: regs.v regs_tb.v
	iverilog -o regs.vvp regs.v regs_tb.v && vvp regs.vvp
