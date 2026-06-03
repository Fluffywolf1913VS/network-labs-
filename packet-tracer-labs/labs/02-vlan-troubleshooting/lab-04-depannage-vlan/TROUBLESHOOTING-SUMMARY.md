# Troubleshooting Summary — Lab 04

## Problem

The topology had two VLANs:

- VLAN 10: `192.168.10.0/24`
- VLAN 20: `192.168.20.0/24`

The stated issue was that the VLANs could not communicate with each other.

## Investigation process

1. Checked Router0 interfaces.
2. Confirmed router-on-a-stick subinterfaces were up.
3. Checked PC IP addresses and default gateways.
4. Confirmed access ports on Switch0 and Switch1.
5. Checked VLAN database on Switch2.
6. Checked trunk allowed VLAN lists.

## Finding

Switch2 had VLAN 10 and VLAN 20 configured, but trunk `Fa0/3` only allowed VLAN 10:

```text
Fa0/3       10
```

This prevented VLAN 20 traffic from crossing that trunk.

## Fix

```bash
configure terminal
interface fa0/3
switchport trunk allowed vlan 10,20
end
```

## Why this fixed the issue

Router-on-a-stick can route between VLANs only if VLAN traffic can reach the router. VLAN 20 was blocked before reaching the complete path because it was not allowed on one trunk. Adding VLAN 20 to the allowed list restored the Layer 2 path for VLAN 20.

## Result

After the fix, Switch2 showed:

```text
Fa0/3       10,20
```

Pings from VLAN 10 to VLAN 20 succeeded.

## Lesson learned

When VLANs do not communicate, check these in order:

1. PC IP address, subnet mask, and default gateway
2. Access VLAN assignment
3. VLAN existence on all required switches
4. Trunk status
5. Allowed VLAN list on trunks
6. Router subinterfaces and 802.1Q encapsulation
7. Ping and ARP validation
