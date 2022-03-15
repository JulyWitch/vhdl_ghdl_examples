### Simple VHDL + GHDL examples

This repository contains VHDL codes with their tests.

It also includes a simple Makefile to compile and run the test bench.

### Requirements

Install ghdl to compile codes and gtkwave to show signals visually.

- Linux

```bash
sudo apt-get install ghdl gtkwave
```

- Mac

You can also install scansion instead of gtkwave.

```zsh
brew install ghdl gtkwave
```

### Usage

Clone this repo
```bash
git clone https://github.com/JulyWitch/vhdl_ghdl_examples.git
```

navigate to repo directory
```bash
cd vhdl_ghdl_examples
```

Create your vhdl file and it's test bench, 

then run the following command.

```
make I=<input_file> T=<test_bench_file> E=<test_bench_entity_name>
```

example

```
make I=test/counter.vhdl T=test/counter.test.vhdl E=counter_tb
```

This will generate wave and vcd files to the waves directory.

Then open generated .ghw or .vcd file with gtkwave.

### Options

To change simulation time pass `S_TIME = <time>` to make command. Time can be in ns, us, and ms.

example:

```
make I=test/counter.vhdl T=test/counter.test.vhdl E=counter_tb S_TIME=1ms
```
