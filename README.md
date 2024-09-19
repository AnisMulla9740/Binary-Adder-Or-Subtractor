**Binary Adder-Subtractor in Verilog**
**Overview**
This project implements a Binary Adder-Subtractor in Verilog. The system is designed to perform both addition and subtraction on two binary inputs based on a control signal. The accompanying testbench verifies the functionality of the design using various test cases.

**Features**
Dual Operation: Performs binary addition and subtraction.
Modular Design: Cleanly separated Verilog files for the main adder-subtractor module and its testbench.
Testbench: Comprehensive test cases are provided to ensure the accuracy of the operations.
Files
binary_adder_subtractor.v: This file contains the main Verilog code for the binary adder-subtractor. It takes two binary numbers and a control signal as inputs and outputs the result of either addition or subtraction.
binary_adder_subtractor_testbench.v: This file contains the testbench, which is used to simulate the functionality of the adder-subtractor. Various test cases are implemented to check both addition and subtraction operations.

**Design Details**
Ports (Adder-Subtractor Module)
Inputs:
A: First binary operand (n-bit).
B: Second binary operand (n-bit).
ctrl: Control signal (1-bit) to select the operation.
ctrl = 0: Addition operation.
ctrl = 1: Subtraction operation.
Outputs:
Result: The result of the addition or subtraction operation (n-bit).
CarryOut: Carry-out flag from addition (1-bit).
Overflow: Overflow flag for arithmetic overflow detection (1-bit).
Functional Description
Addition: When ctrl = 0, the two input operands A and B are added together, and the result is output along with any carry-out.
Subtraction: When ctrl = 1, the module performs binary subtraction by inverting the bits of B and adding 1 (two's complement method), then adds the result to A.
Testbench Description
The testbench applies various input combinations to verify the correctness of the binary adder-subtractor. It covers corner cases such as:

Addition of two positive numbers.
Addition of two negative numbers.
Subtraction resulting in positive and negative numbers.
Overflow and carry-out scenarios.

**How to Run**
**Prerequisites**
To run the simulation, you will need a Verilog simulator such as:

ModelSim
Icarus Verilog
Xilinx Vivado
Steps
Clone the repository or download the Verilog files.
Open your Verilog simulator.
Load the binary_adder_subtractor.v file.
Load the binary_adder_subtractor_testbench.v file.
Run the simulation and observe the output waveforms to verify the operation.
Future Improvements
Extend the module to handle signed numbers more efficiently.
Implement additional arithmetic operations such as multiplication or division.
Optimize the design for hardware synthesis (FPGA implementation).

**Author**
This project was created by Anis Mulla. If you have any questions or suggestions, feel free to reach out!
