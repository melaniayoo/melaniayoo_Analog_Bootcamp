v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 110 160 130 {lab=#net1}
N 160 130 420 130 {lab=#net1}
N 420 110 420 130 {lab=#net1}
N 290 130 290 170 {lab=#net1}
N 200 -100 380 -100 {lab=#net2}
N 160 -70 160 50 {lab=#net2}
N 420 -70 420 50 {lab=#net3}
N 160 -20 260 -20 {lab=#net2}
N 260 -100 260 -20 {lab=#net2}
N 160 -170 160 -130 {lab=VDD}
N 160 -170 420 -170 {lab=VDD}
N 420 -170 420 -130 {lab=VDD}
N 40 -170 160 -170 {lab=VDD}
N 40 -170 40 -70 {lab=VDD}
N 40 260 290 260 {lab=VSS}
N 290 230 290 260 {lab=VSS}
N 290 260 710 260 {lab=VSS}
N 710 230 710 260 {lab=VSS}
N 710 -170 710 -130 {lab=VDD}
N 420 -170 710 -170 {lab=VDD}
N 420 -40 670 -40 {lab=#net3}
N 670 -100 670 -40 {lab=#net3}
N 710 -70 710 170 {lab=VOUT}
N 710 -0 780 0 {lab=VOUT}
N 560 -40 560 -10 {lab=#net3}
N 560 50 560 70 {lab=#net4}
N 560 70 580 70 {lab=#net4}
N 640 70 710 70 {lab=VOUT}
N 350 -210 350 -170 {lab=VDD}
N 330 260 330 330 {lab=VSS}
N 420 -100 500 -100 {lab=VDD}
N 500 -170 500 -100 {lab=VDD}
N 90 -100 160 -100 {lab=VDD}
N 90 -170 90 -100 {lab=VDD}
N 160 80 420 80 {lab=VSS}
N 290 80 290 110 {lab=VSS}
N 290 110 380 110 {lab=VSS}
N 380 110 380 260 {lab=VSS}
N 290 200 360 200 {lab=VSS}
N 360 200 360 240 {lab=VSS}
N 290 240 360 240 {lab=VSS}
N 710 200 800 200 {lab=VSS}
N 800 200 800 250 {lab=VSS}
N 710 250 800 250 {lab=VSS}
N 710 -100 790 -100 {lab=VDD}
N 790 -150 790 -100 {lab=VDD}
N 710 -150 790 -150 {lab=VDD}
N 40 -10 40 100 {lab=#net5}
N 40 160 40 200 {lab=VSS}
N 40 200 40 260 {lab=VSS}
N 40 50 90 50 {lab=#net5}
N 90 50 90 200 {lab=#net5}
N 80 130 90 130 {lab=#net5}
N 40 130 40 160 {lab=VSS}
N 670 150 670 200 {lab=#net5}
N 90 200 250 200 {lab=#net5}
N 90 150 670 150 {lab=#net5}
C {sky130_fd_pr/nfet_01v8.sym} 440 80 0 1 {name=M1
L=1
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 140 80 0 0 {name=M2
L=1
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 270 200 0 0 {name=M3
L=2
W=10
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
C {sky130_fd_pr/pfet_01v8.sym} 400 -100 0 0 {name=M4
L=1
W=20
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
C {sky130_fd_pr/pfet_01v8.sym} 180 -100 0 1 {name=M5
L=1
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 690 200 0 0 {name=M7
L=2
W=10
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
C {sky130_fd_pr/pfet_01v8.sym} 690 -100 0 0 {name=M8
L=1
W=20
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
C {devices/capa.sym} 560 20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 610 70 1 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 460 80 0 1 {name=p5 lab=VIN_N}
C {devices/ipin.sym} 120 80 0 0 {name=p6 lab=VIN_P}
C {devices/opin.sym} 780 0 0 0 {name=p7 lab=VOUT}
C {devices/ipin.sym} 350 -210 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 330 330 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 60 130 0 1 {name=M_bias
L=2
W=10
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
C {devices/res.sym} 40 -40 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
