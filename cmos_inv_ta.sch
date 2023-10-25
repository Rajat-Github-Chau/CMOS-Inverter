v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 760 -430 760 -350 {
lab=Vout}
N 680 -460 720 -460 {
lab=Vin}
N 680 -460 680 -320 {
lab=Vin}
N 680 -320 720 -320 {
lab=Vin}
N 760 -460 800 -460 {
lab=VDD}
N 800 -500 800 -460 {
lab=VDD}
N 760 -500 800 -500 {
lab=VDD}
N 760 -500 760 -480 {
lab=VDD}
N 760 -390 860 -390 {
lab=Vout}
N 580 -390 680 -390 {
lab=Vin}
N 760 -320 810 -320 {
lab=GND}
N 810 -320 810 -290 {
lab=GND}
N 760 -290 810 -290 {
lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 740 -320 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 740 -460 0 0 {name=M2
L=0.15
W=1
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
C {devices/vdd.sym} 760 -490 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 760 -290 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 490 -370 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} 490 -400 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 490 -340 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 360 -370 0 0 {name=Vin
 value=0}
C {devices/gnd.sym} 360 -340 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 1030 -400 0 0 {name=SPICE only_toplevel=false value="
 .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vin 0 1.8 0.01
.save all"}
C {devices/lab_pin.sym} 580 -390 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 860 -390 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 360 -400 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/title.sym} 540 -180 0 0 {name=l5 author="Abhishek Kumar"}
C {devices/code.sym} 920 -650 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
