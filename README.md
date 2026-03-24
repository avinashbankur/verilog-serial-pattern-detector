Real-Time Serial Pattern Detection System using Verilog (Birthday Signature Recognition)

Overview

This project implements a real-time digital system that detects a predefined 9-bit pattern (birthday encoding) from a continuous serial bitstream. The system is designed using Verilog HDL and follows a modular RTL design approach.

Key Features

Real-time serial data transmission using a 10-bit counter
LSB-first bitstream generation
Shift register-based pattern detection
Overlapping pattern detection support
Hit counter for tracking occurrences
1-second interval display update mechanism
Seven-segment display output interface

System Architecture

The design consists of two major blocks:

Transmitter

Generates 10-bit data (0–1023)
Serializes data (LSB first)
Operates at 10 kHz clock

2. Receiver

Captures incoming serial data
Uses a 9-bit shift register for pattern matching
Detects predefined pattern (DOB encoding)
Increments counter on each match
Updates display every 1 second

3. Modules Implemented

Transmitter
Shift Register
Pattern Detector (Comparator)
Hit Counter
Clock Divider (10 kHz → 1 Hz)
Display Controller
Seven Segment Display Driver

4. Timing Details

Clock Frequency: 10 kHz
Bit Rate: 10 kbps
Frame Size: 10 bits
Frame Rate: 1 kHz
Display Update Rate: 1 Hz

5. Simulation

Verified using EDA Playground / Icarus Verilog
Waveforms confirm correct:
	Serial transmission
	Pattern detection
	Counter increment
	1-second display update

Applications

Digital communication systems
Hardware-based pattern recognition
FPGA and RTL design projects
Embedded real-time monitoring systems

Technologies Used

Verilog HDL
RTL Design
Digital Logic Design
Simulation Tools (EDA Playground)
