# Basic-RTL-designs
Implementation of combinational, sequential design using verilog
Basic RTL Designs
This repository contains my practice work in digital design and RTL development using Verilog/SystemVerilog. The main purpose of this repository is to build a strong understanding of how basic digital circuits are described at RTL, simulated, and prepared for synthesis.

I am using these designs as a foundation for more advanced work in RTL design, computer architecture, VLSI, RISC-V processors, and hardware accelerators.
What is included
The RTL folder contains implementations of fundamental digital hardware blocks such as:
- Full Adder
- Ripple Carry Adder
- Multiplexer
- 3-bit Comparator
- ALU
- Decoder
- Encoder
- Priority Encoder
- Register
- Counter
- Shift Register
- Clock Divider
- RAM
The modules are written with a focus on readable and synthesizable RTL coding.
Design Areas
Combinational Logic
The combinational designs in this repository include:
- Multiplexers for data selection
- Decoders for address/control selection
- Encoders for binary encoding
- Priority encoders for priority-based selection
- Comparators for magnitude comparison
- Arithmetic circuits for binary addition
- ALU for arithmetic and logical operations
These circuits helped me understand how input changes propagate directly to combinational outputs.
Sequential Logic
The sequential designs use clocked storage elements and include:
- Registers
- Counters
- Shift registers
- Clock divider
These designs focus on clock-driven state changes, reset handling, enable control, and data movement between clock cycles.
Memory
A parameterized RAM design is included to understand RTL memory modeling, address decoding, read/write operations, and the relationship between address width and memory depth.
ALU
The ALU is a parameterized design that supports multiple arithmetic and logical operations.

The implementation demonstrates operations such as:
- Addition
- Subtraction
- AND
- OR
- XOR
- NOT
- Logical shifts
- Arithmetic shift
- Signed comparison
- Unsigned comparison
Status outputs such as zero, carry, overflow, and negative are also generated.
Parameterized RTL
Some modules are written using parameters so that the same RTL can be reused for different data widths.
parameter WIDTH = 8

Changing the parameter allows the module to operate on a different number of bits without rewriting the complete design.

This approach is useful when developing reusable RTL components.
Verification
The designs are intended to be verified through individual testbenches using simulation.

Verification includes checking:
- Different input combinations
- Reset behavior
- Enable conditions
- Boundary values
- Arithmetic results
- Sequential state transitions
- Memory read/write behavior
Simulation can be performed using ModelSim or QuestaSim.

A typical simulation flow is:
Compile RTL
     |
Compile Testbench
     |
Start Simulation
     |
Apply Test Vectors
     |
Observe Waveforms
     |
Check Expected Results

**Repository Organization
**

Basic-RTL-designs/
|
|-- rtl/
|   |-- full_adder.v
|   |-- ripple_adder.v
|   |-- mux.v
|   |-- comparator_3bit.v
|   |-- alu.v
|   |-- decoder.v
|   |-- encoder.v
|   |-- priority_encoder.v
|   |-- register.v
|   |-- counter.v
|   |-- shift_register.v
|   |-- clock_divider.v
|   |-- ram.v
|
|-- tb/
|   |-- testbenches
|
|-- README.md


Tools
The designs can be developed and simulated using:
- Verilog HDL
- ModelSim
- Git
- GitHub

Skills Practiced
This repository has helped me practice:
- Digital logic design
- RTL modeling
- Verilog syntax
- Combinational logic
- Sequential logic
- Flip-flop based designs
- Arithmetic hardware
- Parameterized modules
- Reset and enable handling
- Memory modeling
- Simulation and waveform analysis
- Basic verification
- Synthesizable RTL coding

Why this repository
These designs form the basic RTL layer of my VLSI learning path.

The goal is not only to implement individual circuits, but also to understand how small RTL blocks are combined to create larger digital systems. The concepts practiced here are later applied in my work on RISC-V processors, custom instruction extensions, AI hardware accelerators, and ASIC physical-design flows.
Author
Venky

M.Tech VLSI Design
Areas of Interest
- RTL Design
- Digital Design
- VLSI
- Static Timing Analysis
- Physical Design
- RISC-V
- AI Hardware Accelerators
- ASIC Design
