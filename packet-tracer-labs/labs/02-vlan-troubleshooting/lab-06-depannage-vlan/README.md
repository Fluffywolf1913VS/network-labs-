# VLAN Troubleshooting Lab 06

## Overview

This Cisco Packet Tracer lab focuses on troubleshooting inter-VLAN connectivity in a Router-on-a-Stick environment.

| VLAN | Network | Default Gateway |
|---|---|---|
| VLAN 10 | 192.168.10.0/24 | 192.168.10.254 |
| VLAN 20 | 192.168.20.0/24 | 192.168.20.254 |
| VLAN 30 | 192.168.30.0/24 | 192.168.30.254 |

The issue affected PC2 in VLAN 30, which could not initially communicate correctly with the other VLANs.

## Troubleshooting Methodology

The troubleshooting process followed a Layer 2 to Layer 3 approach:

1. Check host IP configuration
2. Verify VLAN membership
3. Verify 802.1Q trunk links
4. Verify router subinterfaces
5. Identify the Layer 3 issue
6. Correct the default gateway
7. Test the local gateway
8. Test inter-VLAN connectivity

## Layer 2 Verification

The switch access ports were correctly assigned:

```text
Fa0/2 -> VLAN 10
Fa0/3 -> VLAN 20
Fa0/4 -> VLAN 30
```

The trunk links were operational and carrying VLANs 10, 20 and 30.

Commands used:

```bash
show vlan brief
show interfaces trunk
```

Layer 2 was therefore operating correctly.

## Problem Identified

The router had subinterfaces for VLAN 10 and VLAN 20:

```text
GigabitEthernet0/0.10   192.168.10.254   up/up
GigabitEthernet0/0.20   192.168.20.254   up/up
```

However, VLAN 30 had no router subinterface.

The issue was identified using:

```bash
show ip interface brief
```

PC2 also had an incorrect default gateway:

```text
IP Address:      192.168.30.1
Subnet Mask:     255.255.255.0
Default Gateway: 192.168.30.253
```

## Root Cause

Two configuration errors prevented VLAN 30 from communicating with the other VLANs:

1. Missing `GigabitEthernet0/0.30` router subinterface.
2. Incorrect default gateway on PC2.

## Resolution

The VLAN 30 router subinterface was created:

```bash
enable
configure terminal

interface GigabitEthernet0/0.30
 encapsulation dot1Q 30
 ip address 192.168.30.254 255.255.255.0
 no shutdown

end
```

PC2's default gateway was changed from:

```text
192.168.30.253
```

to:

```text
192.168.30.254
```

## Verification

The router configuration was verified with:

```bash
show ip interface brief
```

Final router state:

```text
GigabitEthernet0/0.10   192.168.10.254   up/up
GigabitEthernet0/0.20   192.168.20.254   up/up
GigabitEthernet0/0.30   192.168.30.254   up/up
```

Connectivity tests from PC2:

```bash
ping 192.168.30.254
ping 192.168.10.1
ping 192.168.20.1
```

Inter-VLAN communication was successfully restored.

The first ICMP packet may occasionally time out in Packet Tracer while ARP information is being resolved.

## Skills Practiced

- VLAN troubleshooting
- 802.1Q trunk verification
- Router-on-a-Stick
- Inter-VLAN routing
- Cisco router subinterfaces
- Default gateway troubleshooting
- Layer 2 vs Layer 3 fault isolation
- Cisco IOS verification commands
- ICMP connectivity testing
- Structured troubleshooting methodology

## Key Takeaway

A VLAN can be correctly configured and transported at Layer 2 while still failing to communicate with other networks if Layer 3 routing is incomplete.

```text
Host -> VLAN -> Trunk -> Gateway -> Routing -> Connectivity Test
```

## Screenshots

### Network Topology

![Network topology](assets/01-topology.png)
