# Lab 02 - Final DHCP Configuration

## DHCP Server Interface

| Setting | Value |
|---|---|
| IPv4 Address | `192.168.1.20` |
| Subnet Mask | `255.255.255.0` |
| Link | Up |

## Existing LAN Pool

| Setting | Value |
|---|---|
| Pool Name | `LAN` |
| Start IP | `192.168.1.1` |
| Subnet Mask | `255.255.255.0` |
| Default Gateway | `192.168.1.254` |
| DNS Server | `8.8.8.8` |
| DHCP Service | On |

## Validation

All five clients successfully received DHCP leases and reached the server at `192.168.1.20`.
