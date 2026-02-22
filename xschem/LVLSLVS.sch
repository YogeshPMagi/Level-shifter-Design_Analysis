v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -340 -60 -320 {
lab=VDDH}
N 120 -340 120 -320 {
lab=VDDH}
N -60 -260 -60 -120 {
lab=#net1}
N 120 -260 120 -120 {
lab=#net2}
N 60 -290 80 -290 {
lab=#net1}
N 60 -290 60 -150 {
lab=#net1}
N -60 -150 60 -150 {
lab=#net1}
N 260 -290 280 -290 {
lab=#net1}
N 260 -290 260 -100 {
lab=#net1}
N 260 -100 280 -100 {
lab=#net1}
N 60 -190 260 -190 {
lab=#net1}
N -60 -60 -60 -40 {
lab=GND}
N -240 -90 -100 -90 {
lab=VIN}
N 320 -260 320 -130 {
lab=VOUT}
N 30 -360 30 -340 {
lab=VDDH}
N 320 -200 420 -200 {
lab=VOUT}
N 120 -290 180 -290 {
lab=VDDH}
N -60 -90 -30 -90 {
lab=GND}
N 120 -120 160 -120 {
lab=#net2}
N -30 -90 -30 -40 {
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
lab=#net2}
N -110 -290 -110 -230 {
lab=#net2}
N -110 -230 120 -230 {
lab=#net2}
N 320 -290 360 -290 {
lab=VDDH}
N 360 -330 360 -290 {
lab=VDDH}
N 20 150 20 170 {
lab=#net3}
N 20 170 20 200 {
lab=#net3}
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
lab=VDDL}
N 20 180 120 180 {
lab=#net3}
N 20 120 90 120 {
lab=VDDL}
N 90 80 90 120 {
lab=VDDL}
N 20 80 90 80 {
lab=VDDL}
N 20 230 80 230 {
lab=GND}
N 80 230 80 260 {
lab=GND}
N 20 260 80 260 {
lab=GND}
N -130 -90 -130 170 {
lab=VIN}
N 120 -90 120 180 {
lab=#net3}
N -60 -340 30 -340 {
lab=VDDH}
N 30 -340 120 -340 {
lab=VDDH}
N 120 -340 320 -340 {
lab=VDDH}
N 20 270 180 270 {
lab=GND}
N 180 20 180 270 {
lab=GND}
N 320 -340 320 -320 {
lab=VDDH}
N 320 -330 360 -330 {
lab=VDDH}
N 320 -50 350 -50 {
lab=GND}
N 350 -100 350 -50 {
lab=GND}
N 320 -100 350 -100 {
lab=GND}
N 160 -60 160 -40 {
lab=GND}
N 320 -70 320 20 {
lab=GND}
N -60 -40 -60 20 {
lab=GND}
N 200 -40 200 20 {
lab=GND}
N 160 -40 160 20 {
lab=GND}
N -30 -40 -30 20 {
lab=GND}
N -60 20 -30 20 {
lab=GND}
N -30 20 160 20 {
lab=GND}
N 160 20 200 20 {
lab=GND}
N 200 20 320 20 {
lab=GND}
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
C {ipin.sym} -240 -90 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {ipin.sym} 30 -360 0 0 {name=VSS2 sig_type=std_logic lab=VDDH}
C {opin.sym} 420 -200 2 0 {name=p3 sig_type=std_logic lab=VOUT}
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
C {ipin.sym} 20 270 0 0 {name=p4 lab=GND}
C {ipin.sym} 20 60 0 0 {name=VCC1 sig_type=std_logic lab=VDDL}
