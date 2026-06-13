TOP = tangnano9k_top

VHDL_SRC = oscillator.vhd prime_finder.vhd tangnano9k_top.vhd

CST = tangnano9k.cst

DEVICE = GW1NR-LV9QN88PC6/I5
FAMILY = GW1N-9C

all: $(TOP).fs

$(TOP)_synth.v: $(VHDL_SRC)
	ghdl --synth --std=08 --out=verilog $(VHDL_SRC) -e $(TOP) > $(TOP)_synth.v

$(TOP).json: $(TOP)_synth.v
	yosys -p "read_verilog $(TOP)_synth.v; synth_gowin -top $(TOP) -json $(TOP).json"

$(TOP)_pnr.json: $(TOP).json $(CST)
	nextpnr-himbaechel \
	  --json $(TOP).json \
	  --write $(TOP)_pnr.json \
	  --device $(DEVICE) \
	  --vopt cst=$(CST) \
	  --vopt family=$(FAMILY)

$(TOP).fs: $(TOP)_pnr.json
	gowin_pack -d $(FAMILY) -o $(TOP).fs $(TOP)_pnr.json

load: $(TOP).fs
	openFPGALoader -b tangnano9k $(TOP).fs

clean:
	rm -f *.json *.fs *_synth.v

.PHONY: all load clean
