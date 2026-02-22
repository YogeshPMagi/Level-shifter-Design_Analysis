v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 80 -460 100 {
lab=GND}
N -360 80 -360 100 {
lab=GND}
N -60 -340 -60 -320 {
lab=VDDH}
N -60 -340 120 -340 {
lab=VDDH}
N 120 -340 120 -320 {
lab=VDDH}
N -60 -260 -60 -120 {
lab=o}
N 120 -260 120 -120 {
lab=#net1}
N 60 -290 80 -290 {
lab=o}
N 60 -290 60 -150 {
lab=o}
N -60 -150 60 -150 {
lab=o}
N 260 -290 280 -290 {
lab=o}
N 260 -290 260 -100 {
lab=o}
N 260 -100 280 -100 {
lab=o}
N 60 -190 260 -190 {
lab=o}
N -60 -60 -60 -40 {
lab=GND}
N -240 -90 -100 -90 {
lab=VIN}
N 320 -260 320 -130 {
lab=VOUT}
N 320 -70 320 -10 {
lab=GND}
N 20 -40 20 -0 {
lab=GND}
N 30 -360 30 -340 {
lab=VDDH}
N 320 -360 320 -320 {
lab=VDDH}
N 320 -200 420 -200 {
lab=VOUT}
N -320 230 -320 250 {
lab=GND}
N 120 -290 180 -290 {
lab=VDDH}
N -60 -90 -30 -90 {
lab=GND}
N -60 -40 160 -40 {
lab=GND}
N 160 -60 160 -40 {
lab=GND}
N 120 -120 160 -120 {
lab=#net1}
N -30 -90 -30 -40 {
lab=GND}
N 160 -40 200 -40 {
lab=GND}
N 200 -90 200 -40 {
lab=GND}
N 160 -90 200 -90 {
lab=GND}
N -60 -290 -20 -290 {
lab=VDDH}
N -20 -330 -20 -290 {
lab=VDDH}
N -60 -330 -20 -330 {
lab=VDDH}
N 180 -330 180 -290 {
lab=VDDH}
N 120 -330 180 -330 {
lab=VDDH}
N -110 -290 -100 -290 {
lab=#net1}
N -110 -290 -110 -230 {
lab=#net1}
N -110 -230 120 -230 {
lab=#net1}
N 320 -290 360 -290 {
lab=VDDH}
N 360 -330 360 -290 {
lab=VDDH}
N 320 -330 360 -330 {
lab=VDDH}
N 320 -100 360 -100 {
lab=GND}
N 360 -100 360 -60 {
lab=GND}
N 320 -60 360 -60 {
lab=GND}
N 20 150 20 170 {
lab=i}
N 20 170 20 200 {
lab=i}
N -60 120 -20 120 {
lab=VIN}
N -60 120 -60 230 {
lab=VIN}
N -60 230 -20 230 {
lab=VIN}
N -130 170 -60 170 {
lab=VIN}
N 20 260 20 270 {
lab=GND}
N 20 60 20 90 {
lab=VDDl}
N 20 180 120 180 {
lab=i}
N 20 120 90 120 {
lab=VDDl}
N 90 80 90 120 {
lab=VDDl}
N 20 80 90 80 {
lab=VDDl}
N 20 230 80 230 {
lab=GND}
N 80 230 80 260 {
lab=GND}
N 20 260 80 260 {
lab=GND}
N -130 -90 -130 170 {
lab=VIN}
N 120 -90 120 180 {
lab=i}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_g5v0d10v5.sym} 100 -290 0 0 {name=Mp3
W=4
L=0.80
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/doc/nfet_g5v0d10v5.svg} 370 -280 0 0 {}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -290 0 0 {name=Mp4
W=5
L=0.50
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_g5v0d10v5.sym} 300 -100 0 0 {name=MN4
W=2
L=0.50
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {vsource.sym} -360 50 0 0 {name=VIN    value="pulse(0 1.2 1n 0.3n 0.3n 5n 10n)"   savecurrent=false}
C {vsource.sym} -460 50 0 0 {name=VSS1 value=3.3v savecurrent=false}
C {lab_pin.sym} -460 20 0 0 {name=VSS sig_type=std_logic lab=VDDH}
C {lab_pin.sym} -360 20 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {gnd.sym} -360 100 0 0 {name=l3 lab=GND}
C {gnd.sym} -460 100 0 0 {name=l4 lab=GND}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -80 -90 0 0 {name=MN2
W=4
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 20 0 0 0 {name=l5 lab=GND}
C {gnd.sym} 320 -10 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -240 -90 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 30 -360 0 0 {name=VSS2 sig_type=std_logic lab=VDDH}
C {lab_pin.sym} 320 -360 0 0 {name=VSS3 sig_type=std_logic lab=VDDH}
C {lab_pin.sym} 420 -200 2 0 {name=p3 sig_type=std_logic lab=VOUT}
C {vsource.sym} -320 200 0 0 {name=VDD value=1.2v savecurrent=false}
C {lab_pin.sym} -320 170 0 0 {name=VCC3 sig_type=std_logic lab=VDDl}
C {gnd.sym} -320 250 0 0 {name=l2 lab=GND}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 140 -90 0 0 {name=MN3
W=4
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_g5v0d10v5.sym} -80 -290 0 0 {name=Mp2
W=4
L=0.80
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {lab_pin.sym} 190 -190 1 0 {name=VSS4 sig_type=std_logic lab=o}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 230 0 0 {name=MN1
W=0.6
L=0.2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {OpenLane/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 120 0 0 {name=MP1
W=0.6
L=0.2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 20 270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 20 60 0 0 {name=VCC1 sig_type=std_logic lab=VDDl}
C {lab_pin.sym} 100 180 1 0 {name=VSS5 sig_type=std_logic lab=i}
C {code_shown.sym} -870 -750 0 0 {name=s1 only_toplevel=false value="
.lib /home/yogesh/OpenLane/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
* Perfect Timing Analysis
.tran 0.01n 50n
* Measure 10% to 90% Rise Time (The slope going up)
.meas tran rise_time trig v(vout) val=0.33 rise=1 targ v(vout) val=2.97 rise=1
* Measure 90% to 10% Fall Time (The slope going down)
.meas tran fall_time trig v(vout) val=2.97 fall=1 targ v(vout) val=0.33 fall=1
* 1. Timing Measurements (50% to 50% for Prop Delay)
.meas tran t_plh trig v(vin) val=0.6 rise=1 targ v(vout) val=1.65 rise=1
.meas tran t_phl trig v(vin) val=0.6 fall=1 targ v(vout) val=1.65 fall=1
.meas tran energy_total integ "vss1#branch * 3.3" from=10n to=90n
.control
  run
  * Current from source is negative, so we multiply by -1
  let pwr_val = (energy_total / 80n) * -1
  print pwr_val
  plot v(vin) v(vout) v(i)
  plot v(i)
.endc"}
