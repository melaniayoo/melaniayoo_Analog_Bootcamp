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

DC Gain:              47.42 dB   (Target: ≥20 dB)  PASS
Input Offset:         0.774 mV   (Target: ≤5 mV)   PASS
CMRR:                 _____ dB   (Target: ≥40 dB)
Input Impedance:      _____ MΩ   (Target: ≥1 MΩ)
Output Impedance:     _____ kΩ   (Target: ≤1 kΩ)
Power Consumption:    0.324 mW   (Target: ≤5 mW)   PASS
3dB Bandwidth:        _____ MHz

GBW Product:          _____ MHz

PASS/FAIL: TBD
