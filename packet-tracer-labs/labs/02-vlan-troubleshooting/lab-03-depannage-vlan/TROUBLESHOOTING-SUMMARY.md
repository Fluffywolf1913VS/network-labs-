# Troubleshooting Summary

## Root cause

VLAN 10 was missing from Switch0. PC1 was correctly placed in VLAN 10 on Switch1, and the router had a VLAN 10 subinterface, but VLAN 10 also needed to exist on Switch0 because the path from Switch1 to Router0 crosses Switch0.

## Fix

```bash
Switch0# configure terminal
Switch0(config)# vlan 10
Switch0(config-vlan)# name VLAN0010
Switch0(config-vlan)# end
```

## Validation

Confirmed:

- PC0 could ping `192.168.2.254`.
- PC1 could ping `10.255.255.254`.
- Switch0 trunks carried VLANs `1,2,10` after VLAN 10 was created.

Final recommended proof for the repository:

```bash
PC0> ping 10.0.0.1
PC1> ping 192.168.2.1
```
