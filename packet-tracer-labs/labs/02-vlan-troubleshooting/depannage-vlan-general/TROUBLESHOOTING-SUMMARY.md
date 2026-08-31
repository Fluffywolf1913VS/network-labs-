# Troubleshooting Summary - General VLAN Lab

## Scope
Multi-switch network with VLANs 10, 20 and 30 using Router-on-a-Stick.

## Faults Identified
1. Switch1 Fa0/3 administratively down.
2. Router G0/0.20 administratively down.
3. VLAN 20 missing from Switch1 trunk.
4. VLAN 20 missing/inactive in Switch1 VLAN database.
5. Central switch router-facing port not initially configured as a proper trunk.
6. VLAN 10 missing from the actual router trunk.
7. PC3 incorrect subnet mask.
8. PC4 missing IPv4 configuration.
9. PC9 incorrect IPv4 address (`190.168.30.4`) and subnet mask.
10. PC7 connected through a trunk port instead of a VLAN 20 access port.

## Final State
- VLAN 10: operational
- VLAN 20: operational
- VLAN 30: operational
- Router-on-a-Stick: operational
- Inter-VLAN routing: operational
- Final endpoint tests: successful with 0% packet loss
