# FPGA-Based ADC Interface for FSR and Capacitive Touch Sensor

This project demonstrates how to interface a **Force Sensitive Resistor (FSR)** and a **Capacitive Touch Sensor** with an FPGA using an **Analog-to-Digital Converter (ADC)**. The FPGA converts the analog signals from the sensors into digital signals, enabling further processing of sensor data.

## Overview

The project uses Verilog to implement the following:
- **Clock Divider** to reduce the FPGA clock frequency for the ADC.
- **Analog-to-Digital Converter (ADC)** to convert the analog output from the sensors into 10-bit digital data.
- **Data Storage** modules to store and process the digital output from the ADC.
- **FSR and Capacitive Touch Sensor Interface**: This setup reads the analog outputs from the FSR and Capacitive Touch Sensor, converts them to digital, and stores the data for further use.

## Features
- Interface with both **FSR** and **Capacitive Touch Sensor**.
- Convert analog sensor signals to 10-bit digital values.
- Separate handling of sensor inputs using different ADC channels.
- Modular Verilog design for easy extension and integration.

## Project Structure

The project contains the following modules:

1. **Clock Divider (`cnt1.v`)**: Reduces the clock frequency to provide a slower clock (`ADCclk`) for the ADC.
2. **ADC Module (`ADC.v`)**: Converts analog inputs from the FSR and Capacitive Touch Sensor into digital data.
3. **ADC Controller (`ADC_top.v`)**: Manages the ADC process and integrates the clock division and conversion processes.
4. **Data Storage (`fdce10.v`)**: Stores the 10-bit digital output from the ADC for further processing.

## Schematic
1. **FSR**: Analog output connected to **`I1`**.
2. **Capacitive Touch Sensor**: Analog output connected to **`I2`**.
3. **Clock Divider**: Divides the FPGA clock for the ADC.
4. **ADC**: Converts the analog signals from both sensors into digital outputs.

## Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/fpga-adc-fsr-touch-sensor.git
