v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -20 80 -20 {lab=#net1}
N -0 -20 0 -10 {lab=#net1}
N -70 -80 80 -80 {lab=#net2}
N -70 -80 -70 -10 {lab=#net2}
N 50 -60 80 -60 {lab=#net3}
N 50 -60 50 50 {lab=#net3}
N 50 50 70 50 {lab=#net3}
N 60 -40 80 -40 {lab=#net4}
N 60 -40 60 30 {lab=#net4}
N 60 30 130 30 {lab=#net4}
N 130 30 130 50 {lab=#net4}
N 70 50 70 90 {lab=#net3}
N 130 50 130 90 {lab=#net4}
N 70 150 70 200 {lab=#net5}
N 130 150 130 180 {lab=#net5}
N 70 180 130 180 {lab=#net5}
N 380 -80 410 -80 {lab=vout}
C {sky130_fd_pr/corner.sym} 540 -120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 0 20 0 0 {name=VSS value=0 savecurrent=false}
C {devices/code_shown.sym} 500 30 0 0 {name=s1 only_toplevel=false value="
.control

* Sweep differential input from -10 mV to +10 mV
dc VDIFF -0.03 0.01 0.0001

* Measure output around +/-1 mV differential input
meas dc vout_m1 FIND v(vout) AT=-0.001
meas dc vout_p1 FIND v(vout) AT=0.001

* Differential voltage gain
let gain_vv = (vout_p1 - vout_m1)/0.002
let gain_db = 20*log10(abs(gain_vv))

* Input offset:
* find VDIFF where output is at mid-supply = 0.9 V
meas dc input_offset FIND v-sweep WHEN v(vout)=0.9

* Supply current at VDIFF = 0
meas dc idd FIND i(VDD) AT=0

* Power consumption
let power_w = 1.8*abs(idd)
let power_mw = power_w*1000

print gain_vv
print gain_db
print input_offset
print idd
print power_mw

plot v(vout)

.endc
"}
C {devices/vsource.sym} -70 20 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/gnd.sym} 0 50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -70 50 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 100 50 1 0 {name=VDIFF value=0 savecurrent=false}
C {devices/res.sym} 70 120 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 130 120 0 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 70 230 0 0 {name=VCM value=0.9 savecurrent=false}
C {devices/gnd.sym} 70 260 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 410 -80 0 0 {name=vout sig_type=std_logic lab=vout}
C {opamp_two_stage.sym} 230 -50 0 0 {name=x1}
