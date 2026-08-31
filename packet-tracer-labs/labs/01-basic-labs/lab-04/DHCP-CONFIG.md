# DHCP Configuration - Lab 04

## DHCP Server

```text
Interface:   FastEthernet0
IPv4:        192.168.1.18
Subnet Mask: 255.255.255.0
```

Final interface state:

```text
FastEthernet0  Up    192.168.1.18/24
Ethernet1      Down  <not set>
```

## DHCP Service

```text
Service:   On
Interface: FastEthernet0
```

## LAN Pool

```text
Pool Name:        LAN
Default Gateway:  192.168.1.254
DNS Server:       8.8.8.8
Start IP Address: 192.168.1.20
Subnet Mask:      255.255.255.0
Maximum Users:    235
TFTP Server:      0.0.0.0
WLC Address:      0.0.0.0
```

## Address Range

Starting at `192.168.1.20` with 235 users gives:

```text
First address: 192.168.1.20
Last address:  192.168.1.254
```

The subnet broadcast address is therefore excluded:

```text
192.168.1.255
```

## Client Leases

```text
PC0 -> 192.168.1.20
PC1 -> 192.168.1.21
PC2 -> 192.168.1.22
PC3 -> 192.168.1.23
PC4 -> 192.168.1.24
```

## Packet Tracer serverPool

Packet Tracer also displayed its built-in `serverPool`.

It was left in place. The operational scope used and validated in this lab was the `LAN` pool.
