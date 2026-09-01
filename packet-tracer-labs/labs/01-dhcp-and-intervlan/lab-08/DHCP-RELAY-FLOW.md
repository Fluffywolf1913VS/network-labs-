# DHCP Relay Flow - Lab 08

## Why a relay is required

DHCP begins with a broadcast. Routers separate broadcast domains, so a DHCP broadcast from VLAN 20 does not automatically reach a DHCP server in VLAN 10.

`ip helper-address` provides the relay function.

## Flow

```text
VLAN 20 client
     |
     | DHCP DISCOVER
     v
G0/0.20 - Router0
     |
     | ip helper-address 192.168.1.19
     v
DHCP Server
192.168.1.19
     |
     | OFFER / ACK
     v
Router0
     |
     v
VLAN 20 client
```

## Important distinction

`ip helper-address` is not:

- a default gateway
- a static route
- a DHCP pool
- a VLAN command

It is a relay destination configured on the router interface that receives the client's DHCP broadcast.

## Lab fault

```text
Wrong relay server:   192.168.1.18
Actual DHCP server:   192.168.1.19
```

Correcting the helper restored DHCP for VLAN 20.
