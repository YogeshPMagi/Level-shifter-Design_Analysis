# Level Shifter Design and Analysis-using-Sky130pdk
 This repository documents the characterization and analysis of nMOS and pMOS devices as well as design and analysis of a CMOS Level Shifter Design and Analysis using various open source tools like Xschem, Ngspice, MAGIC, Netgen etc.
 ### Analysis of nMOS and pMOS
 Here we have used the 1.8V standard model of nMOS and pMOS in the SkyWater 130nm open-source Process Design Kit (PDK) for the analyis to determine parameters like threshold voltage, transconductance, and output resistance. The extracted parameters provide insight into device operation, including switching behavior and drive strength, and form the basis for selecting appropriate transistor dimensions in the CMOS inverter design.
 ### Design and Analysis of Level Shifter
 Following the characterization of individual nMOS and pMOS devices, I have designed a Level Shifter circuit. This circuit is essential in multi-voltage domain designs to shift a logic signal from a low-voltage rail (VDDL) to a high-voltage rail (VDDH) without causing static power leakage or logic failure. The design is analyzed under transient conditions to study its switching behavior, propagation delay, and power dissipation using the SkyWater 130nm PDK.

---

## Contents
- [1. Tools and PDK](#1-Tools-and-PDK)
  - [1.1 Xschem](#11-Xschem)
  - [1.2 Ngspice](#12-Ngspice)
  - [1.3 Magic](#13-Magic)
  - [1.4 Netgen](#14-Netgen)
  - [1.5 Skywater Technology](#12-Skywater-Technology)
- [2. Analysis of MOSFET models](#2-Analysis-of-MOSFET-models)
  - [2.1 General MOS analysis](#21-General-MOS-analysis)
  - [2.2 Strong 0 and Weak 1](#22-Strong-0-and-Weak-1)
  - [2.3 Weak 0 and Strong 1](#23-Weak-0-and-Strong-1)
- [3. Level Shifter Design and Analysis](#3-Level-Shifter-Design-and-Analysis)
  - [3.1 Why Level Shifter Circuits](#31-Why-Level-Shifter-Circuits) 
  - [3.2 Schematic and Symbol Design](#32-Schematic-and-Symbol-Design)
  - [3.3 Delay Analysis](#33-Delay-Analysis)
  - [3.4 Switching Characteristics](#34-Switching_Characteristics)
  - [3.5 Layout ](#35-Layout)
  - [3.6 Layout vs Schematic](#36-Layout-vs-Schematic)
  - [3.7 Post-Layout Simulation Results](#37-Post-Layout-Simulation)
  - [3.8 Power Analysis Dynamic Power](#38-Power-Analysis-Dynamic-Power)
  - [3.9 Project Summary](#39-Project-Summary)

## 1. Tools and PDK
### 1.1 Xschem
![image](https://user-images.githubusercontent.com/43693407/143311382-8cd3c1c9-dd07-4179-892d-52e9cf71e5a7.png)

[Xschem](http://repo.hu/projects/xschem/xschem_man/xschem_man.html) is a schematic capture program that allows to interactively enter an electronic circuit using a graphical and easy to use interface. When the schematic has been created a circuit netlist can be generated for simulation. is an open-source schematic capture tool widely used in analog and digital integrated circuit design workflows. 
 > [xschem manual](https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html)

### 1.2 Ngspice
![image](https://user-images.githubusercontent.com/49194847/138070431-d95ce371-db3b-43a1-8dbe-fa85bff53625.png)

[Ngspice](http://ngspice.sourceforge.net/devel.html) is an open-source SPICE-based circuit simulation tool used for the analysis of analog and digital electronic circuits. In this project, Ngspice is utilized to perform DC, transient, and parametric simulations of NMOS, PMOS circuits designed using the SKY130 PDK. It enables the evaluation of current–voltage characteristics, voltage transfer behavior, timing parameters, and power consumption. Ngspice supports device-level modeling and script-based simulation control, making it well suited for extracting MOSFET parameters and analyzing inverter performance under varying operating conditions.
 > [ngspice manual](https://ngspice.sourceforge.io/docs.html)

### 1.3 Magic
![image](https://user-images.githubusercontent.com/49194847/138071384-a2c83ba4-3f9c-431a-98da-72dc2bba38e7.png)

[Magic](http://opencircuitdesign.com/magic/) is an open-source layout editor used for physical design of integrated circuits. In this project, Magic is employed to create the physical layout of the CMOS Design and Analysis of Level Shifter using design rules provided by the SKY130 PDK. It supports design rule checking (DRC) to ensure layout correctness and allows extraction of parasitic components from the layout. The extracted layout information is used for post-layout simulation, enabling evaluation of the impact of parasitic capacitances and resistances on inverter performance. Magic plays a key role in bridging schematic-level design and physical implementation in the CMOS design flow.
 > [magic manual](http://opencircuitdesign.com/magic/magic_docs.html)

### 1.4 Netgen
![image](https://github.com/SudeepGopavaram/Design_and_analysis_of_nmos_and_pmos_using_sky130pdk/assets/57873021/215efd81-b834-4845-a390-d8c8be694ed2)

[Netgen](http://opencircuitdesign.com/netgen/) is an open-source verification tool used for layout versus schematic (LVS) checking in integrated circuit design flows. In this project, Netgen is used to compare the netlist extracted from the physical layout with the netlist generated from the schematic to ensure logical equivalence between the two representations. This verification step confirms that the implemented layout correctly reflects the intended circuit design. Netgen thereby ensures design correctness before post-layout simulation and helps identify connectivity or device mismatch issues in the CMOS Design and Analysis of Level Shifter layout.
 > [magic manual](http://opencircuitdesign.com/netgen/tutorial/tutorial.html)

### 1.5 SkyWater Technology
![image](https://user-images.githubusercontent.com/49194847/138075630-d1bdacac-d37b-45d3-88b5-80f118af37cd.png)

[SkyWater](https://www.skywatertechnology.com/technology-and-design-enablement/) is an open-source CMOS technology kit based on a 130 nm process, providing device models, design rules, and layout information required for integrated circuit design. In this project, the SKY130 PDK is used to access accurate NMOS and PMOS transistor models for schematic-level simulation and physical design. The PDK supplies technology-specific parameters for circuit simulation, layout rule checking, and parasitic extraction, enabling consistent pre-layout and post-layout analysis. Its open availability makes it suitable for academic research and educational CMOS design projects.
 > [skywater pdk manual](https://skywater-pdk.readthedocs.io/en/main/)

## 2. Analysis of MOSFET models
### 2.1 General MOS analysis
MOSFET models describe the electrical behavior of transistors under various biasing conditions and are essential for accurate CMOS circuit analysis. In this section, standard 1.8V nMOS and pMOS models from the SKY130 PDK are analyzed using Xschem and Ngspice to study their current–voltage characteristics and key model parameters. This analysis provides the basis for device characterization and subsequent CMOS inverter design.
The components used are as follows:

1. ```nfet_01v8.sym``` (xschem_sky130 library)
2. ```pfet_01v8.sym``` (xschem_sky130 library)
3. ```vsource.sym``` (xschem device library)
4. ```code_shown.sym``` (xschem device library)
5. ```gnd.sym``` (xschem device library)
6. ```pfet_g5v0d10v5.sym``` (xschem device library)
7. ```nfet_g5v0d10v5.sym``` (xschem device library)


### 2.2 Strong 0 and Weak 1
![NMOS Inverter](https://raw.githubusercontent.com/YogeshPMagi/Level-shifter-Design_Analysis/main/Images/NMOS_INV%20(2).png)<br>
![NMOS inverter Transient](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Nmos%20inv%20Wave.png)<br>
In the above, when a square wave is applied to the NMOS inverter, a LOW input turns the NMOS OFF and the output is pulled up to 1.8 V. When the input is HIGH, the NMOS turns ON and operates in the linear region as a result it will act as a voltage controlled resistor. The output then forms a voltage divider and does not reach the full logic level. Hence, NMOS passes a strong 0 but only a weak 1.
### 2.3 Weak 0 and Strong 1
![pMOS inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Pmos_inv%20(2).png)<br>
![pMOS inverter Transient](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Pmos%20inv%20wave.png)<br>
The pMOS here passes a strong 1 but only a weak 0 because of the same reason which is explained for the nMOS. When input is LOW, the pMOS turns ON and operates in linear region acting as a voltage controlled resistor. 

## 3. Level Shifter Design and Analysis
### 3.1 Why Level Shifter  Circuits
![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Schematic.png)<br>

A Level Shifter is a crucial bridge in multi-voltage domain designs. It allows a signal from a low-voltage domain (VDDL= 1.2V) to drive a high-voltage domain (VDDH = 3.3) without causing excessive leakage or reliability issues. This is achieved by using a cross-coupled pull-up network that "latches" the high-voltage state based on the input differential pair.
### 3.2 Schematic and Symbol Design
![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Xscheme_schematic.png)<br>

The Level Shifter was designed in Xschem using the Skywater 130nm PDK. The circuit utilizes low-voltage transistors for the input stage and high-voltage 5V tolerant transistors (e.g., nfet_g5v0d10v5) for the output stage to handle the $3.3V$ rail safely.
Input Rail (VDDL): 1.2V
Output Rail (VDDH):3.3V
Transistor Count: 8 instances (3 NFET 01v8, 1 PFET 01v8, 1 NFET 5V, 3 PFET 5V).

### 3.3 Delay Analysis
![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Rise%20time%20and%20prp%20delay.png)<br>

Propagation delay is defined as the time interval between the 50% transition points of the input and output waveforms. In this Level Shifter design, the delay is influenced by the "contention" between the pull-down NMOS network and the cross-coupled PMOS load.

![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Screenshot%202026-02-22%20193318.png)<br>

The following measurements were obtained from the transient analysis:
Rise Time (tr): 56.28 ps
Fall Time (tf): 57.11 ps
Propagation Delay Low-to-High (tpLH): 194.66 ps
Propagation Delay High-to-Low (tpHL): 926.68 ps
The average propagation delay (t_p) is calculated as:
t_p = (tpLH+tpHL)/2
    = 560.67ps

The significant difference between tpLH and tpHL is characteristic of DCVSL level shifters, where one side must "overpower" the other to flip the state of the latch.

### 3.4 Switching Characteristics

![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/VIN_Vout.png)<br>

The transient plots show successful level translation from the 1.2V domain to the 3.3V domain.
Voltage Levels: The input signal oscillates between 0V and 1.2V, while the output successfully swings from 0V to a full 3.3V.
Capacitive Coupling: A small "undershoot" or dip below 0V is visible on the output waveform during the rising edge of the input. This is due to parasitic capacitive coupling (feedthrough) within the circuit before the pull-up network fully engages.


### 3.5 Layout
![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Lay_out_lvl.png)<br>

The Level Shifter layout in SkyWater 130nm successfully integrates a dual-voltage architecture, bridging the 1.2v and 3.3v domains. By utilizing a combination of standard thin-oxide and 5v thick-oxide transistors, the design ensures reliable operation under high-voltage conditions. Precise N-well isolation and strategic substrate biasing were implemented to maintain signal integrity and prevent latch-up across the different supply potentials, ultimately achieving a clean status of 0 DRC errors.

The physical implementation effectively manages the cross-coupled routing required for the DCVSL architecture. Through the efficient use of Metal1 and Polysilicon layers, the complex feedback loops were successfully resolved within a compact footprint. While physical extraction introduced expected parasitics, the design remained robust, delivering a clean rail-to-rail 3.3v output with a final average propagation delay of 826.56 ps.

### 3.6 Layout vs Schematic
![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/LVS_Res.png)<br>

The layout was verified against the schematic netlist using Netgen.

Results: The LVS tool confirmed that both the Layout (CLS) and the Schematic (LVLSLVS) contain 8 devices and 8 nets.
Final Status: "Circuits match uniquely." This confirms that the physical wiring and device properties (Width and Length) perfectly reflect the intended electrical design.
### 3.7 Post-Layout Simulation Results
To account for physical parasitics, a Post-Layout Simulation was performed on the netlist extracted from Magic (including parasitic capacitances).
Transient AnalysisThe simulation was run in Ngspice with a 1.2V pulse input and 3.3V high-voltage supply.

![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/post_lay_grp.png)<br>
Voltage Translation: The circuit successfully translated a 1.2V input to a full rail-to-rail 3.3V output.

Signal Integrity: As seen in the transient plots, the output (Vout) shows clean switching. A minor capacitive coupling "dip" is observed during the rising edge, which is a common characteristic of cross-coupled level shifters due to internal parasitic capacitance.

### 3.8 Comparing Schematic to Layout
Delay Comparison: The average propagation delay increased from 560.67 ps in the schematic to 826.56 ps in the layout, representing a 47.4% timing penalty due to metal resistance and junction capacitance.

Power Comparison: Total average power consumption rose from approximately 96.30 µW to 141.59 µW, a 47.0% increase driven by the additional energy required to charge parasitic parasitic wire and overlap capacitances.
Design Efficiency: The Power-Delay Product (PDP) shifted from the 10^-14 J range to the 10^-13J range, proving that layout parasitics nearly decimate the energy efficiency of an "ideal" design.

### 3.8 Power Analysis
![NMOS Inverter](https://github.com/YogeshPMagi/Level-shifter-Design_Analysis/blob/main/Images/Power_cons.png)<br>
Dynamic Power: Instantaneous power (pinst) plots show sharp spikes during switching events, peaking at approximately 2.7mW. This indicates energy is primarily consumed during transitions (charging parasitics) with negligible static leakage.
Static Power: Between switching events, the power consumption drops to near zero, indicating that the cross-coupled architecture effectively eliminates static current paths once the output state is latched.

Total Energy: The total energy consumed per switching cycle is measured at approximately -1.86e-12 Joules.

This analysis confirms that while the Level Shifter introduces more delay than a standard inverter due to its contention-based switching, it provides a robust, rail-to-rail 3.3V output with efficient zero-static power consumption.

### 3.9 Summary 
Project Summary
In this project, a high-performance Level Shifter was designed, laid out, and verified using the SkyWater 130nm Open Source PDK. The design successfully bridges the gap between a low-voltage logic domain (1.2V) and a high-voltage I/O domain (3.3V). By utilizing a cross-coupled PMOS load architecture, the circuit provides a full rail-to-rail swing with minimal static power consumption.
