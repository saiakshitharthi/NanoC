# Nano C Compiler

## Overview

This project implements a NASM-based assembly language program that prioritizes efficient memory management and I/O operations.

## How to Run

1. Build the project:

Please Explore the folders and README.txt files in them to run each and every step!
## Bonus Features

Optimized I/O operations in assembly language for faster execution.
## Memory Binding Design

### Local Variables

Stored on the stack.
Stack records managed actively during function execution.
Allocated stack space cleared upon function completion.
### Global Variables

Declared in the data section.
Global arrays declared in the bss section (no initialization needed).
## Memory Management

Base pointer used for memory organization.
Memory above the base pointer holds function arguments and return addresses.
Local variables and temporary variables stored above the base pointer.
## Data Structure

Employs a map data structure for efficient retrieval of local or global variable locations.
## Notes

Feel free to explore the codebase for further details on implementation.
