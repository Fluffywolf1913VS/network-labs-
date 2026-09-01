# Lab 03 - Final DHCP Configuration

## DHCP Server

```text
IPv4 Address: 192.168.1.20
Subnet Mask:  255.255.255.0
```

## LAN Pool

| Setting | Value |
|---|---|
| Pool Name | `LAN` |
| Start IP | `192.168.1.1` |
| Subnet Mask | `255.255.255.0` |
| Maximum Users | `5` |
| Default Gateway | `192.168.1.254` |
| DNS Server | `8.8.8.8` |
| DHCP Service | On |

## Validation

Five clients successfully received addresses from `192.168.1.1` through `192.168.1.5`.
