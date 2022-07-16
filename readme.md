# Arithmetical and Logical Unit

### Self Learning Project 

This repository contains the design and hardware descriptions in **VHDL** modelled **structurally**, for a 8 bit ALU capable of the following 7 encoded instructions

### Inputs
- $en[0]$ - alu enable input
- $a[7:0]$ - first 8 bit operand
- $b[7:0]$ - second 8 bit operand 
- $sel[2:0]$ - operation select


### Output
- $y[7:0]$ - output of the operation 
- $c[0]$ - carry flag
- $o[0]$ - overflow flag

> The ALU gives a high impedance output whenever not in use that is either when $en[0] = 0$ or $sel[2:0] = 111$ 

### Logical Instructions
> These instructions set the overflow and carry flag to be set as $0$

| Operation   | $sel[2:0]$ |
| :---:       |    :----:  |
| Bitwise XOR | $000$      |
| Bitwise NOR | $001$      |
| Bitwise NAND | $010$      |
| Bitwise AND | $011$      |
| Bitwise OR | $100$      |

### Arithmetical Instructions

| Operation   | $sel[2:0]$ |
| :---:       |    :----:  |
| Signed Addition | $101$  |
| Signed Subtraction | $110$|
> The overflow bit is set whenever there is an overflow, $y_{10} \ge 128$ or $y_{10} \le -129$

> The carry flag is set whenever the final carry bit obtained after addition/subtraction is high

### Adder-Subtractor Architecture

An 8-bit [**Kogge Stone Carry Lookahead Adder**](https://github.com/rohankalbag/ALU/blob/c0f8e430da5b30acccebff2db60376fdc3a64859/source/kogge_stone.vhdl#L6-L13) configuration used to perform the signed addition and signed subtraction. A select input $m[0]$ was used to select either addition/subtraction. Each bit of $b[7:0]$ was connected to an XOR gate with $m[0]$ to obtain its 1's complement, input carry was set to $m[0]$ to perform 2's complementation in case of subtraction

![](https://github.com/rohankalbag/ALU/blob/main/images/kogge_stone_rtl.png?raw=true)

The [**Kogge Stone Lookahead**](https://github.com/rohankalbag/ALU/blob/c0f8e430da5b30acccebff2db60376fdc3a64859/source/kogge_stone_lookahead.vhdl#L36-L42) block has a four layered architecture of components called [`black_cell`](https://github.com/rohankalbag/ALU/blob/c0f8e430da5b30acccebff2db60376fdc3a64859/source/kogge_stone_lookahead.vhdl#L4-L9) and [`grey_cell`](https://github.com/rohankalbag/ALU/blob/c0f8e430da5b30acccebff2db60376fdc3a64859/source/kogge_stone_lookahead.vhdl#L21-L26) involving generate $g_i = a_i \cdot b_i$ and propogate $p_i = a_i \oplus b_i$ inputs for each bit to perform the carry lookahead logic

![](https://github.com/rohankalbag/ALU/blob/main/images/kogge_stone_lookahead_rtl.png?raw=true)

The carry lookahead adder evaluates each carry bit independently gives much faster performance as compared to a regular ripple carry adder as each carry bit is evaluated one after another leading to overhead and latency 

### Testing and Verification via Simulation

A [testbench](https://github.com/rohankalbag/ALU/blob/main/source/device.vhdl) was created with all possible test vectors to test each feature of the ALU and verify the design

#### Test Vectors 
|a|b|s|en|y|c|o|tested feature|
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|`0x--`|`0x--`| `---`|`0`| `0xZZ` | `0`|`0`| ALU is not in use |
|`0x0F`|`0x7F`| `000`|`1`| `0x70` | `0`|`0`| Bitwise XOR |
|`0x0F`|`0x7F`| `001`|`1`| `0x80` | `0`|`0`| Bitwise NOR |
|`0x0F`|`0x7F`| `010`|`1`| `0xF0` | `0`|`0`| Bitwise NAND |
|`0x0F`|`0x7F`| `011`|`1`| `0x0F` | `0`|`0`| Bitwise AND |
|`0x0F`|`0x7F`| `100`|`1`| `0x7F` | `0`|`0`| Bitwise OR |
|`0x3F`|`0x23`| `101`|`1`| `0x62` | `0`|`0`|Addition without Carry and Overflow |
|`0x7F`|`0x02`| `101`|`1`| `0x81` | `0`|`1`|Addition without Carry with Overflow |
|`0xFF`|`0xFF`| `101`|`1`| `0xFE` | `1`|`0`|Addition with Carry without Overflow |
|`0x80`|`0xFF`| `101`|`1`| `0x7F` | `1`|`1`|Addition with Carry with Overflow |
|`0x3F`|`0xFF`| `110`|`1`| `0x40` | `0`|`0`|Subtraction without Carry and Overflow |
|`0x7F`|`0xFE`| `110`|`1`| `0x81` | `0`|`1`|Subtraction without Carry with Overflow |
|`0xFF`|`0x01`| `110`|`1`| `0xFE` | `1`|`0`|Subtraction with Carry without Overflow |
|`0x80`|`0x01`| `101`|`1`| `0x7F` | `1`|`1`|Subtraction with Carry with Overflow |
|`0x--`|`0x--`| `111`|`-`| `0xZZ` | `0`|`0`| ALU is not in use |

### RTL and Gate Level Simulations

- RTL Simulation


![](https://github.com/rohankalbag/ALU/blob/main/images/rtl_waveform.png?raw=true)

- Gate Level Simulation


![](https://github.com/rohankalbag/ALU/blob/main/images/gatelevel_waveform.png?raw=true)

> We can see that all the testcases passed for both RTL and Gatelevel Simulation
> The detailed waveforms for [RTL](https://github.com/rohankalbag/ALU/blob/main/rtl_waveform.pdf) and [Gate Level](https://github.com/rohankalbag/ALU/blob/main/gatelevel_waveform.pdf) are here

### References
[1] https://www.researchgate.net/publication/344955631_Design_and_Analysis_of_Kogge-Stone_and_Han-Carlson_Adders_in_130nm_CMOS_Technology

[2] https://www.youtube.com/watch?v=JmKuhglL88c
