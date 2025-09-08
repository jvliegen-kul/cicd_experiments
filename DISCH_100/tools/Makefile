# Makefile

GHDL=/usr/bin/ghdl
GHDL=ghdl
GTKWAVE=/usr/bin/gtkwave

GHDL_ANALYSE=$(GHDL) -a $(GHDL_FLAGS)
GHDL_ELABORATE=$(GHDL) -e $(GHDL_FLAGS)
GHDL_SIMULATE=$(GHDL) -r $(GHDL_FLAGS)

DESIGN_SOURCE_DIR = src
TEST_SOURCE_DIR = tests

DESIGN_SOURCES = $(wildcard $(DESIGN_SOURCE_DIR)/*.vhd)
TEST_SOURCES = $(wildcard $(TEST_SOURCE_DIR)/*.vhd)

UNIT_NAME=nand_gate_tb
SIM_WAVEFORM_INFO=$(UNIT_NAME).vcd
SIM_DURATION=100ns

all: sim

.PHONY: waveforms
waveforms: $(SIM_WAVEFORM_INFO)
	$(GTKWAVE) $(SIM_WAVEFORM_INFO)

.PHONY: sim
sim: elaborate
	$(GHDL_SIMULATE) $(UNIT_NAME) --stop-time=$(SIM_DURATION) --vcd=$(SIM_WAVEFORM_INFO)

.PHONY: elaborate
elaborate: analyse
	$(GHDL_ELABORATE) $(UNIT_NAME)

.PHONY: analyse
analyse: $(DESIGN_SOURCES)
	$(GHDL_ANALYSE) $(DESIGN_SOURCES) $(TEST_SOURCES)

.PHONY: clean
clean:
	rm -Rf work-obj*.cf *.vcd