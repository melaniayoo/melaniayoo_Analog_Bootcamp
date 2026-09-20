v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -520 -300 -440 -300 {lab=#net1}
N -520 -300 -520 -290 {lab=#net1}
N -590 -360 -440 -360 {lab=#net2}
N -590 -360 -590 -290 {lab=#net2}
N -470 -340 -440 -340 {lab=#net3}
N -470 -340 -470 -230 {lab=#net3}
N -470 -230 -450 -230 {lab=#net3}
N -460 -320 -440 -320 {lab=vout}
N -460 -320 -460 -250 {lab=vout}
N -140 -360 -110 -360 {lab=vout}
N -450 -230 -450 -80 {lab=#net3}
N -460 -250 -130 -250 {lab=vout}
N -130 -360 -130 -250 {lab=vout}
N -120 -360 -120 -340 {lab=vout}
C {sky130_fd_pr/corner.sym} -50 -360 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} -50 -190 0 0 {name=s1 only_toplevel=false value="
.control
op
print v(vout)

ac dec 100 1 1G

let itest_mag = abs(i(vtest))
let vout_mag = abs(v(vout))
let zout_vec = vout_mag / itest_mag

meas ac itest_1k find itest_mag at=1k
meas ac vout_1k find vout_mag at=1k
meas ac zout find zout_vec at=1k

print itest_1k
print vout_1k
print zout

plot zout_vec
.endc
"}
C {devices/vsource.sym} -520 -260 0 0 {name=VSS value=0 savecurrent=false}
C {devices/vsource.sym} -590 -260 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} -520 -230 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -590 -230 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -450 -50 0 0 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} -450 -20 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -110 -360 0 0 {name=vout sig_type=std_logic lab=vout}
C {devices/vsource.sym} -120 -310 0 0 {name=VTEST value="dc 0.9 ac 1" savecurrent=false}
C {devices/gnd.sym} -120 -280 0 0 {name=l4 lab=GND}
C {opamp_two_stage.sym} -290 -330 0 0 {name=x1}
