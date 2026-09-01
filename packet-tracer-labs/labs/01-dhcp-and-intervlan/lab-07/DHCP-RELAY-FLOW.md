# DHCP Relay and APIPA Flow - Lab 07

## Why VLAN 20 Needs DHCP Relay

The DHCP server is:

```text
192.168.1.18/24
```

PC3 and PC4 are in:

```text
192.168.2.0/24
```

A DHCP Discover is initially a broadcast. Routers separate broadcast domains, so a DHCP broadcast from VLAN 20 does not automatically reach VLAN 10.

Router0 solves this with:

```text
ip helper-address 192.168.1.18
```

## DORA Through a Relay

```text
PC3                 Router0                DHCP Server
 |                     |                        |
 | DHCP DISCOVER       |                        |
 |-------------------->|                        |
 |                     | relayed request        |
 |                     |----------------------->|
 |                     |                        |
 |                     |<-----------------------|
 |<--------------------| DHCP OFFER             |
 |                     |                        |
 | DHCP REQUEST        |                        |
 |-------------------->|----------------------->|
 |                     |                        |
 |                     |<-----------------------|
 |<--------------------| DHCP ACK               |
```

## Why the DHCP Server Needed a Gateway

The DHCP server lives in VLAN 10.

```text
Server: 192.168.1.18/24
```

It can reach `192.168.1.x` directly using ARP.

But VLAN 20 is remote:

```text
192.168.2.0/24
```

Therefore the server needs:

```text
Default Gateway: 192.168.1.254
```

Without it, the DHCP request can reach the server through the relay, but the server does not have a usable route back toward the remote network.

## APIPA

When DHCP cannot complete, a client may self-assign:

```text
169.254.x.x/16
```

This is APIPA and is generated locally by the client.

In this lab:

```text
PC3 = 169.254.x.x
```

was the symptom, not the root cause.

The actual causes were:

```text
Router-facing switchport not trunking
+
DHCP server missing default gateway
```

After both were fixed:

```text
PC3 = 192.168.2.21/24
Gateway = 192.168.2.254
```
