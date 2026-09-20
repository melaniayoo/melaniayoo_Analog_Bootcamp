v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -100 160 -100 {lab=#net1}
N 80 -100 80 -90 {lab=#net1}
N 10 -160 160 -160 {lab=#net2}
N 10 -160 10 -90 {lab=#net2}
N 130 -140 160 -140 {lab=#net3}
N 130 -140 130 -30 {lab=#net3}
N 130 -30 150 -30 {lab=#net3}
N 140 -120 160 -120 {lab=#net4}
N 140 -120 140 -50 {lab=#net4}
N 140 -50 210 -50 {lab=#net4}
N 210 -50 210 -30 {lab=#net4}
N 210 -30 210 10 {lab=#net4}
N 210 70 210 100 {lab=#net3}
N 150 100 210 100 {lab=#net3}
N 460 -160 490 -160 {lab=vout}
N 150 -30 150 120 {lab=#net3}
C {sky130_fd_pr/corner.sym} 550 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 550 10 0 0 {name=s1 only_toplevel=false value="
.control
op
ac dec 100 1 1G

let acm_db = vdb(vout)
print acm_db[0]

plot vdb(vout)
.endc
"}
C {devices/vsource.sym} 80 -60 0 0 {name=VSS value=0 savecurrent=false}
C {devices/vsource.sym} 10 -60 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} 80 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 10 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 210 40 0 0 {name=VDIFF value="dc 0.9 ac 1" savecurrent=false}
C {devices/vsource.sym} 150 150 0 0 {name=VCM value="dc 0.9 ac 1" savecurrent=false}
C {devices/gnd.sym} 150 180 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 490 -160 0 0 {name=vout sig_type=std_logic lab=vout}
C {opamp_two_stage.sym} 310 -130 0 0 {name=x1}
