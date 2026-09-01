# Commands - Lab 07

## Switch2

### Verify trunks

```text
enable
show interfaces trunk
```

### Find the actual router-facing switch port

```text
show mac address-table
```

The router MAC was learned on:

```text
0004.9A43.6501 -> Gig0/2
```

### Configure the router-facing port as a trunk

```text
configure terminal
interface gigabitEthernet0/2
switchport mode trunk
no shutdown
end
```

### Verify switchport operation

```text
show interfaces gigabitEthernet0/2 switchport
```

Expected:

```text
Administrative Mode: trunk
Operational Mode: trunk
Operational Trunking Encapsulation: dot1q
```

### STP verification

```text
show spanning-tree vlan 10
show spanning-tree vlan 20
```

Do not disable STP simply because one redundant link is blocked.

---

## Router0

### Verify interface status

```text
enable
show ip interface brief
```

Expected:

```text
G0/0      up/up
G0/0.10   192.168.1.254 up/up
G0/0.20   192.168.2.254 up/up
```

### Verify running configuration

```text
show running-config
```

Relevant configuration:

```text
interface GigabitEthernet0/0.10
 encapsulation dot1Q 10
 ip address 192.168.1.254 255.255.255.0

interface GigabitEthernet0/0.20
 encapsulation dot1Q 20
 ip address 192.168.2.254 255.255.255.0
 ip helper-address 192.168.1.18
```

### Router connectivity tests

```text
ping 192.168.1.1
ping 192.168.1.18
```

### ARP troubleshooting

```text
show ip arp
```

---

## DHCP Server

### Connectivity tests

```text
ping 192.168.1.254
ping 192.168.2.254
```

The first test checks the local router interface.
The second test verifies routing to the remote VLAN.

Final server network settings:

```text
IP Address:      192.168.1.18
Subnet Mask:     255.255.255.0
Default Gateway: 192.168.1.254
```

---

## PCs

### Check addressing

```text
ipconfig
```

### VLAN 10 tests

```text
ping 192.168.1.254
ping 192.168.1.18
```

### VLAN 20 tests

```text
ping 192.168.2.254
ping 192.168.1.18
```

### Inter-VLAN test

From VLAN 20 to PC0:

```text
ping 192.168.1.1
```
