# Troubleshooting Summary - VLAN Lab 07

## Symptom
Inter-VLAN routing was unavailable across VLANs 10, 20, 30 and 40.

## Findings
- Router physical interface `G0/0`: `up/up`
- 802.1Q VLAN tags: correct
- Gateway IP addresses: correct
- Router subinterfaces `G0/0.10`, `.20`, `.30` and `.40`: `administratively down`
- Redundant orange switch links were consistent with STP behavior and were not the root cause

## Root Cause
All Router-on-a-Stick subinterfaces contained the `shutdown` command.

## Fix
Apply `no shutdown` to:
- `G0/0.10`
- `G0/0.20`
- `G0/0.30`
- `G0/0.40`

## Validation
- All four subinterfaces became `up/up`
- Each VLAN reached its default gateway
- PC0 reached hosts in VLANs 20, 30 and 40 with 0% packet loss
