v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -120 440 -120 {lab=#net1}
N 380 -120 380 -60 {lab=#net1}
N 380 -20 440 -20 {lab=#net2}
N -10 -120 30 -120 {lab=#net3}
N -10 -120 -10 -40 {lab=#net3}
N 50 -40 80 -40 {lab=#net4}
N 50 -40 50 40 {lab=#net4}
N -10 40 50 40 {lab=#net4}
N -10 20 -10 40 {lab=#net4}
N 80 -150 80 -140 {lab=#net5}
N 80 -80 80 -60 {lab=#net6}
N 30 -210 80 -210 {lab=#net3}
N 30 -210 30 -120 {lab=#net3}
N 80 -150 80 -140 {lab=#net5}
C {opamp_two_stage.sym} 230 -30 0 0 {name=x1}
C {devices/vsource.sym} 440 -90 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} 440 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 380 60 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 30 -90 0 0 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} 30 -60 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 80 10 0 0 {name=VBIAS_N value=0.7 savecurrent=false}
C {devices/gnd.sym} 80 40 0 0 {name=l5 lab=GND}
C {devices/capa-2.sym} 440 10 0 0 {name=CL
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 440 40 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/corner.sym} 180 50 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 380 30 0 0 {name=VSS value=0 savecurrent=false}
C {devices/code_shown.sym} 320 110 0 0 {name=s1 only_toplevel=false value="
.control
dc VDIFF -0.01 0.01 0.0001
.endc
"}
C {devices/res.sym} 80 -180 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -10 -10 0 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 80 -110 0 0 {name=VDIFF value=0 savecurrent=false}
