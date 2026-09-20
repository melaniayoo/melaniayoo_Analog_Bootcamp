v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -230 -60 -150 -60 {lab=#net1}
N -230 -60 -230 -50 {lab=#net1}
N -300 -120 -150 -120 {lab=#net2}
N -300 -120 -300 -50 {lab=#net2}
N -180 -100 -150 -100 {lab=#net3}
N -180 -100 -180 10 {lab=#net3}
N -180 10 -160 10 {lab=#net3}
N -170 -80 -150 -80 {lab=vout}
N -170 -80 -170 -10 {lab=vout}
N 150 -120 180 -120 {lab=vout}
N -160 10 -160 160 {lab=#net3}
N -170 -10 160 -10 {lab=vout}
N 160 -120 160 -10 {lab=vout}
C {sky130_fd_pr/corner.sym} 240 -120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 240 50 0 0 {name=s1 only_toplevel=false value="
.control
op
print v(vout)
print i(vtest)

ac dec 100 1 1G

let zin_vec = 1 / abs(i(vtest))
meas ac zin find zin_vec at=1k

plot zin_vec
.endc
"}
C {devices/vsource.sym} -230 -20 0 0 {name=VSS value=0 savecurrent=false}
C {devices/vsource.sym} -300 -20 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} -230 10 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -300 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -160 190 0 0 {name=VTEST value="dc 0.9 ac 1" savecurrent=false}
C {devices/gnd.sym} -160 220 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 180 -120 0 0 {name=vout sig_type=std_logic lab=vout}
C {opamp_two_stage.sym} 0 -90 0 0 {name=x1}
