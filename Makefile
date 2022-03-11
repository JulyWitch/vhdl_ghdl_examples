VHDLEX = .vhd

# using gtkwave to show simulations 
WAVEFORM_VIEWER = gtkwave

# ghdl
GHDL_CMD = ghdl
GHDL_FLAGS  = --ieee=synopsys --warn-no-vital-generic

I = "inputFile"
T = "inputTestFile"
O = "outputFile"

compile:
	$(GHDL_CMD) $(GHDL_FLAGS) -a $(I)
	$(GHDL_CMD) $(GHDL_FLAGS) -a $(T)
	$(GHDL_CMD) -r $(basename $(T)) — vcd=$(O)
