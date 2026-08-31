# Troubleshooting Summary - VLAN Lab 08

## Symptom

PC4 (`192.168.3.1/24`) could not reach its default gateway `192.168.3.254`.

## Findings

- Router VLAN subinterfaces were `up/up`
- Trunk links were operational
- PC4 IP configuration was correct
- PC4 MAC address was learned on Switch1 `Fa0/6`
- `Fa0/6` was still assigned to VLAN 1

## Root Cause

PC4 was connected to an access port in the wrong VLAN.

```text
PC4 IP network -> VLAN 3
Switch1 Fa0/6  -> VLAN 1
```

## Fix

Assign Switch1 `Fa0/6` to VLAN 3.

## Validation

- PC4 reached `192.168.3.254` with 0% packet loss
- PC4 reached hosts in VLAN 2 and VLAN 4
- Inter-VLAN routing worked correctly
