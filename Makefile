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




# analysis:
# 	$(GHDL) -a --std=08 src/xor_gate.vhd





# DESIGN_SOURCES=program_counter.vhd
# TEST_SOURCES=tb/program_counter_tb.vhd
UNIT_NAME=xor_gate_tb
SIM_WAVEFORM_INFO=$(UNIT_NAME).vcd


# DIRS = src src/subdir1 src/subdir2
# SEARCHC = $(addsuffix /*.c ,$(DIRS))
# SEARCHCPP = $(addsuffix /*.cpp ,$(DIRS))
# SRCS = $(wildcard $(SEARCHC))
# SRCS += $(wildcard $(SEARCHCPP))

all: sim

.PHONY: waveforms
waveforms: $(SIM_WAVEFORM_INFO)
	$(GTKWAVE) $(SIM_WAVEFORM_INFO)

.PHONY: sim
sim: elaborate
	$(GHDL_SIMULATE) $(UNIT_NAME) --stop-time=100ns --vcd=$(SIM_WAVEFORM_INFO)

.PHONY: elaborate
elaborate: analyse
	$(GHDL_ELABORATE) $(UNIT_NAME)

.PHONY: analyse
analyse: $(DESIGN_SOURCES)
	$(GHDL_ANALYSE) $(DESIGN_SOURCES) $(TEST_SOURCES)

.PHONY: clean
clean:
	rm -Rf work-obj93.cf work-obj08.cf *.vcd