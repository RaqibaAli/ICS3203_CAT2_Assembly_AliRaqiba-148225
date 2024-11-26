Task 1: Control Flow and Conditional Logic
Purpose: Classify a number as positive, negative, or zero.
Key Features:
Uses both conditional (CMP, JE, JL) and unconditional jumps (JMP).
Demonstrates branching logic and ASCII-to-integer conversion.

Task 2: Array Manipulation with Looping and Reversal
Purpose: Reverse an array of integers in place without additional memory.
Key Features:
Implements a loop to swap elements directly in the array.
Avoids auxiliary memory, emphasizing memory efficiency.
Demonstrates iterative processing using index pointers.

Task 3: Modular Program with Subroutines for Factorial Calculation
Purpose: Calculate the factorial of a number using a subroutine.
Key Features:
Demonstrates modularity with a reusable subroutine.
Utilizes the stack for saving/restoring registers to manage recursion.
Outputs the result stored in a general-purpose register.

Task 4: Data Monitoring and Control Using Port-Based Simulation
Purpose: Simulate a control system based on sensor input.
Key Features:
Demonstrates decision-making based on sensor values.
Simulates real-world control systems with memory-based "ports."
Uses conditional jumps to implement actions (start/stop motor, trigger alarm).

Task 4: Data Monitoring and Control Using Port-Based Simulation
Purpose: Simulate a control system based on sensor input.
Key Features:
Demonstrates decision-making based on sensor values.
Simulates real-world control systems with memory-based "ports."
Uses conditional jumps to implement actions (start/stop motor, trigger alarm).

Task 4: Data Monitoring and Control Using Port-Based Simulation
Purpose: Simulate a control system based on sensor input.
Key Features:
Demonstrates decision-making based on sensor values.
Simulates real-world control systems with memory-based "ports."
Uses conditional jumps to implement actions (start/stop motor, trigger alarm).

To compile the code
nasm -f elf32 -o task1.o task1.asm
creating an exutable
ld -m elf_i386 -o task1 task1.o
running the program
./task1
