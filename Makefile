# ghdl
GHDL_CMD = ghdl
GHDL_FLAGS  = -fsynopsys --std=08

I = "put file path here"
T = 
E = "put entity name here"

WAVES_DIR = waves

S_TIME = 1us

compile:
	@mkdir -p $(WAVES_DIR)
	$(GHDL_CMD) -a $(GHDL_FLAGS) $(I) $(T) 
	$(GHDL_CMD) -e $(GHDL_FLAGS) $(E)
	$(GHDL_CMD) -r $(GHDL_FLAGS) $(E) --vcd=$(WAVES_DIR)/$(E).vcd --wave=$(WAVES_DIR)/$(E).ghw --stop-time=$(S_TIME)

