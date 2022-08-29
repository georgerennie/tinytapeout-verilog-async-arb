WOKWI_PROJECT_ID=341359304823013970

# Simulate using Icarus Verilog
sim:
	iverilog -g2012 -o user_module_$(WOKWI_PROJECT_ID).vvp \
	user_module_$(WOKWI_PROJECT_ID).v \
	user_module_$(WOKWI_PROJECT_ID)_tb.v

	vvp user_module_$(WOKWI_PROJECT_ID).vvp

