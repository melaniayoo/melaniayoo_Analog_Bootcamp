v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -90 180 -90 {lab=#net1}
N 100 -90 100 -80 {lab=#net1}
N 30 -150 180 -150 {lab=#net2}
N 30 -150 30 -80 {lab=#net2}
N 150 -130 180 -130 {lab=#net3}
N 150 -130 150 -20 {lab=#net3}
N 150 -20 170 -20 {lab=#net3}
N 160 -110 180 -110 {lab=#net4}
N 160 -110 160 -40 {lab=#net4}
N 160 -40 230 -40 {lab=#net4}
N 230 -40 230 -20 {lab=#net4}
N 170 -20 170 20 {lab=#net3}
N 230 -20 230 20 {lab=#net4}
N 170 80 170 130 {lab=#net5}
N 230 80 230 110 {lab=#net5}
N 170 110 230 110 {lab=#net5}
N 480 -150 510 -150 {lab=vout}
C {sky130_fd_pr/corner.sym} 630 -140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 500 30 0 0 {name=s1 only_toplevel=false value="
.control

* Check operating point
op
print v(vout)

* AC sweep
ac dec 100 1 1G

* Maximum/low-frequency gain
let gain_max = maximum(vdb(vout))
print gain_max

* 3 dB bandwidth
let target = gain_max - 3
print target
meas ac bandwidth WHEN vdb(vout)=target FALL=1

* Unity-gain frequency / GBW
meas ac gbw WHEN vdb(vout)=0 FALL=1

print bandwidth
print gbw

plot vdb(vout)

.endc
"}
C {devices/vsource.sym} 100 -50 0 0 {name=VSS value=0 savecurrent=false}
C {devices/vsource.sym} 30 -50 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} 100 -20 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 30 -20 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 200 -20 1 0 {name=VDIFF value="dc 0 ac 1" savecurrent=false}
C {devices/res.sym} 170 50 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 230 50 0 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 170 160 0 0 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} 170 190 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 510 -150 0 0 {name=vout sig_type=std_logic lab=vout}
C {opamp_two_stage.sym} 330 -120 0 0 {name=x1}
