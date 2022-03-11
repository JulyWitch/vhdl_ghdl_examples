# using gtkwave to show simulations 
WAVEFORM_VIEWER = gtkwave

# ghdl
GHDL_CMD = ghdl
GHDL_FLAGS  = -fsynopsys --std=08

I = "put file path here"
T = "put test file path here"
E = "put entity name here"

S_TIME = 1us

compile:
	$(GHDL_CMD) -a $(GHDL_FLAGS) $(I) $(T) 
	$(GHDL_CMD) -e $(GHDL_FLAGS) $(E)
	$(GHDL_CMD) -r $(GHDL_FLAGS) $(E) --vcd=$(dir $(I))$(E).vcd --wave=$(dir $(I))$(E).ghw --stop-time=$(S_TIME)

