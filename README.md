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
- [3. CMOS Inverter Design and Analysis](#3-CMOS-Inverter-Design-and-Analysis)
  - [3.1 Why CMOS Circuits](#31-Why-CMOS-Circuits) 
  - [3.2 Design of CMOS inverter circuit](#32-Design-of-CMOS-inverter-circuit)
  - [3.3 Analysis of CMOS inverter](#33-Analysis-of-CMOS-inverter)
    - [3.3.1 Noise Margin Analysis](#331-Noise-Margin-Analysis)
    - [3.3.2 Delay Analysis](#332-Delay-Analysis)
    - [3.3.3 Power Dissipation Analysis](#332-Power-Dissipation-Analysis)
  - [3.4. Layout Design of CMOS inverter](#34-Layout-Design-of-CMOS-inverter)
  - [3.5 Layout vs Schematic](#35-Layout-vs-Schematic)

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
![nMOS inverter](.\Images\NMOS_INV (2).png)<br><br>
![nMOS inverter Transient](.\Images\Nmos inv Wave.png)<br>
In the above, when a square wave is applied to the NMOS inverter, a LOW input turns the NMOS OFF and the output is pulled up to 1.8 V. When the input is HIGH, the NMOS turns ON and operates in the linear region as a result it will act as a voltage controlled resistor. The output then forms a voltage divider and does not reach the full logic level. Hence, NMOS passes a strong 0 but only a weak 1.
### 2.3 Weak 0 and Strong 1
![pMOS inverter](.\Images\Pmos_inv (2).png)<br><br>
![pMOS inverter Transient](.\Images\Pmos inv wave.png)<br>
The pMOS here passes a strong 1 but only a weak 0 because of the same reason which is explained for the nMOS. When input is LOW, the pMOS turns ON and operates in linear region acting as a voltage controlled resistor. 

## 3. Level Shifter Design and Analysis
### 3.1 Why Level Shifter  Circuits
A Level Shifter is a crucial bridge in multi-voltage domain designs. It allows a signal from a low-voltage domain (VDDL= 1.8V) to drive a high-voltage domain (VDDH = 3.3) without causing excessive leakage or reliability issues. This is achieved by using a cross-coupled pull-up network that "latches" the high-voltage state based on the input differential pair.
### 3.2 Schematic and Symbol Design
The Level Shifter was designed in Xschem using the Skywater 130nm PDK. The circuit utilizes low-voltage transistors for the input stage and high-voltage 5V tolerant transistors (e.g., nfet_g5v0d10v5) for the output stage to handle the $3.3V$ rail safely.
Input Rail (VDDL): 1.8V
Output Rail (VDDH):3.3V
Transistor Count: 8 instances (3 NFET 01v8, 1 PFET 01v8, 1 NFET 5V, 3 PFET 5V).
### 3.3.1 Noise Margin Analysis
Noise margin is a measure of the inverter’s ability to tolerate noise without causing a logic error. It is derived directly from the Voltage Transfer Characteristics (VTC). The Voltage Transfer Characteristic (VTC) of a CMOS inverter represents the relationship between the output voltage (Vout) and the input voltage(Vin). It is obtained by performing a DC sweep of the input voltage while keeping the supply voltage constant. The VTC curve shows three operating regions: low-input/high-output, transition region, and high-input/low-output. The slope of the curve in the transition region indicates the inverter gain, and the switching threshold voltage Vm is defined as the point where Vin = Vout.<br>
![VTC](./Images/vtc_char_cmos.jpg)
![noise margin](./Images/noise_margin.png)<br>
I have created a testbench for my designed inverter feeding it Vdd = 1.8V and a input pulse which oscillates between 0 to 1.8V and has a period of 6.6ns:
After running simulation for DC analysis we get the results below:
![CMOS inverter VTC](.\Images\CMOS_nseDC.png)<br>
From the above Voltage Transfer Characteristic curve of CMOS inverter, it can be seen that the Vm is very close to 0.9V i.e. half of 1.8V. Also, from the VTC, the following critical points can be found:<br><br>
    **VOH** - Maximum output voltage when it is logic '1'.<br>
    **VOL** - Minimun output voltage when it is logic '0'.<br>
    **VIH** - Maximum input voltage that can be interpreted as logic '0'.<br>
    **VIL** - Minimum input voltage that can be interpreted as logic '1'.<br>
    **Vm** - Switching Threshold voltage<br><br>
The Points VIL, VIH, VOL and VOH lies on the curve where the magnitude of the slope is 1 and Vth lies where Vin = Vout. So, I have used the ```meas``` command tofrom  find these points the plot:
The values of the points obtained from the above plot:
| Voltage | Value |
|---------|-------|
| Vm | 0.899V |
|   VOH   | 1.746V  |
|   VOL   |  0.0701V   |
|   VIH   | 1.026V |
|   VIL   | 0.775V |

There are two such values of Noise margins for a binary system. The calculation of Noise margin are done using the two expressions:<br>
NOISE MARGIN LOW: **NML = VIL - VOL**<br>
NOISE MARGIN HIGH: **NMH = VOH - VIH**<br>

The Noise margin values obtained for our inverter are **NML = 0.705V** and **NMH = 0.72V**.
Since we have obtained the Vm very close to 0.9, so the noise margins obatined are very close to each other.

### 3.3.2 Delay Analysis
For the delay analysis, transient analysis is used since it is a time-domain phenomenon. I have used the same testbench that I used before for my inverter for Noise Margin analysis. The obtained transient analysis plot for Vin and Vout is shown below:
![CMOS inverter tran](.\Images\CMOS_DLY anlys.png)<br>
From the above plot, I have calculated the propagation delay first. **Propagation delay** is defined as the time it takes for a change at the input of a gate to cause a corresponding change at the output. It is measured between the 50% points of the input and output voltage waveforms. In a CMOS inverter:<br>
tpHL: Time delay when output falls from HIGH to LOW.<br>
tpLH: Time delay when output rises from LOW to HIGH.<br>
The average propagation delay is given by:<br>
tp = (tpHL+tpLH)/2
![propagation delay](./Images/prop_delay.jpg)<br>
So I have obtained **tpLH = 42.308ps** and **tpLH = 47.394ps**, then calculated **tp = 44.851ps**. <br>​
Propagation delay in depends on the input, specifically the input transition time (**input slew rate**), as faster inputs generally lead to lesser delays. Propagation delay alone is sufficient only for an isolated gate with fixed input slew. In real digital systems, gates are cascaded, and since delay depends on input slew, rise and fall times must be known to correctly predict timing, power, and reliability of the entire path.
The above rise and fall time analysis is for Wp = 3.5 and Wn = 1. Also it is defined for the transition when output goes from 90% to 10% for fall time, and from 10% to 90% transition for rise time. The results are **trise = 123.587ps** and **tfall = 89.804ps**.<br>

The rise time and fall time should be minimized in a CMOS inverter To reduce delay in cascaded logic (input-slew dependence). I tried to reduce it by following ways:
1. **Increase supply power Vdd**: A higher Vdd could drive more current leading to faster transitions but it would increase dynamic power and short circuit in our circuit. So, I found that it is not preferred.
2. **Increase width of transistors**: Increasing transistor widths could increase their drive strengths decreasing rise and fall time because it would reduce Ron. However, tradeoff here is area. So I made Wp = 4 and Wn = 2 and run the simulations:
![rise and fall time](.\Images\INV_p=4_n=2.png)<br>
Here, I get unexpected results as trise decreased and tfall increased. This can be explained because in unloaded analysis, the internal capacitance also scales with the transistor width along with the increasing driving strengths. So I tried to perform loaded analysis by taking a load capacitance of 0.1pF:
![rise and fall time](.\Images\INV_p=3.5_n=1.png)<br>
In the above unloaded analysis where I have taken Wp = 3.5 and Wn = 1, we get **trise = 341.163ps** and t**fall = 371.712ps**<br><br>
In another unloaded analysis where I have taken Wp = 4 and Wn = 2, we get **trise = 301.795ps** and **tfall = 226.137ps**<br><br>
It is observed that clearly both decreases here. trise decreased by a lesser amount compared to tfall because Wp if increased by 0.5 only and Wn is increased to twice. In loaded analysis, the presence of a large external load capacitance makes drive strength the dominant factor, resulting in predictable reductions in rise and fall times with increased transistor widths.<br><br>

### 3.3.3 Power Dissipation Analysis
For Power dissipation I have done transient analysis of my loaded inverter testbench with Wp = 3.5 and Wn = 1. I have used the ```integ``` to perform integration of the current from Vdd source in the formula Pavg ​= (1/T) ∫[0→T] V_DD · I_DD(t) dt. For the time period in integration I have taken the second period from 6.6ns to 13.2ns since first period may conatain some anomaly.
![power](.\Images\Pinst.png)<br>
Since the current is very small I have scale it up by 1000, so that it can be seen properly on the plot. The result obtained after power analysis is **Power_avg = 50.654 μW**. This includes dynamic power and short-circuit power.

### 3.4 Layout Design of CMOS inverter
At this stage I have tried to design a DRC-clean CMOS inverter layout corresponding to the schematic design, ensuring correct transistor sizing and proper connectivity. **Design Rule Check (DRC)** is a verification step used in VLSI layout design to ensure that the physical layout follows all fabrication rules defined by the technology, here it is SkyWater 130nm. I have used **MAGIC VLSI** and TCL language for designing the a standard full-custom layout of CMOS inverter. I have kept the transistor sizes in layout same as I have taken in schematic. For designing the layout, I have referred the metal stack diagram and Design Rules from the [SkyWater SKY130 PDK](https://skywater-pdk.readthedocs.io/en/main/rules/assumptions.html) documentation itself. Below is the metal stack diagram:
![metal stack diagram](./Images/metal_stack.png)<br>​
Below is the layout of the CMOS inverter I have designed and it is completed with 0 DRC errors.:<br>
<img src = "![alt text](<CMOS_INV LAY.png>)" width = "70%" height = "70%"></img><br>
I have extracted the parasitics from the circuit and those parasitics are written in the spice netlist of the above layout deisgn.

### 3.5 Layout vs Schematic
The layout was verified against the schematic netlist using Netgen.
Results: The LVS tool confirmed that both the Layout (CLS) and the Schematic (LVLSLVS) contain 8 devices and 8 nets.
Final Status: "Circuits match uniquely." This confirms that the physical wiring and device properties (Width and Length) perfectly reflect the intended electrical design.
## 4. Post-Layout Simulation Results
To account for physical parasitics, a Post-Layout Simulation was performed on the netlist extracted from Magic (including parasitic capacitances).
###4.1 Transient AnalysisThe simulation was run in Ngspice with a 1.8V pulse input and $3.3V$ high-voltage supply.
Voltage Translation: The circuit successfully translated a 1.8V input to a full rail-to-rail 3.3V
output.
Signal Integrity: As seen in the transient plots, the output (Vout) shows clean switching. A minor capacitive coupling "dip" is observed during the rising edge, which is a common characteristic of cross-coupled level shifters due to internal parasitic capacitance.
###4.2 Power and Delay AnalysisDynamic Power: Instantaneous power (pinst) plots show sharp spikes during switching events, peaking at approximately 2.7mW. This indicates energy is primarily consumed during transitions (charging parasitics) with negligible static leakage.
Propagation Delay: The layout transitions are sharp, confirming that the transistor sizing is sufficient to overcome the contention in the cross-coupled PMOS network even with added layout parasitics.

## 5.Summary 
5.1 Project SummaryIn this project, a high-performance Level Shifter was designed, laid out, and verified using the SkyWater 130nm Open Source PDK. The design successfully bridges the gap between a low-voltage logic domain (1.8V) and a high-voltage I/O domain (3.3V). By utilizing a cross-coupled PMOS load architecture, the circuit provides a full rail-to-rail swing with minimal static power consumption.
