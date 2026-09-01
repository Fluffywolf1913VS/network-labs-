# Router Configuration - Lab 08

## Router-on-a-Stick

```text
interface GigabitEthernet0/0
 no ip address

interface GigabitEthernet0/0.10
 encapsulation dot1Q 10
 ip address 192.168.1.254 255.255.255.0

interface GigabitEthernet0/0.20
 encapsulation dot1Q 20
 ip address 192.168.2.254 255.255.255.0
 ip helper-address 192.168.1.19
```

## DHCP Relay

The helper is configured on the interface that receives the DHCP broadcast from the client subnet.

For VLAN 20:

```text
interface GigabitEthernet0/0.20
 ip helper-address 192.168.1.19
```

This relays DHCP/BOOTP traffic toward the server at `192.168.1.19`.
