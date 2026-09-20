# UWASIC Design Template

A template for mixed-signal ASIC design using open-source tools, featuring automated workflows for digital, analog, and integration for TinyTapeout chip projects.

## Documentation

**Full documentation is available in the [`docs/`](./docs) directory.**

Please refer to the documentation for:

- [Environment Setup](./docs/src/content/Environment)
- [Digital Workflow](./docs/src/content/Flows/Digital.ts)
- [Analog Workflow](./docs/src/content/Flows/Analog.ts)
- [Mixed-Signal Workflow](./docs/src/content/Flows/MixedSignal.ts)
- [TinyTapeout Integration](./docs/src/content/TinyTapeout)

### Quick Start Docs

To view the documentation locally:

```bash
cd docs/
bun install
bun run dev
```

2-Stage Op-Amp Performance Summary
=====================================
```bash
DC Gain:              36.24 dB    (Target: ≥20 dB)
Input Offset:         2.184 mV    (Target: ≤5 mV)
CMRR:                 245.38 dB   (Target: ≥40 dB)
Input Impedance:      5605 MΩ     (Target: ≥1 MΩ)
Output Impedance:     0.0410 kΩ   (Target: ≤1 kΩ)
Power Consumption:    0.311 mW    (Target: ≤5 mW)
3dB Bandwidth:        0.328 MHz

GBW Product:          21.48 MHz

PASS/FAIL: PASS
```
