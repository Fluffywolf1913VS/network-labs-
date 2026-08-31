# Troubleshooting Summary - Lab 02

## Symptom

The DHCP server interface was up, but the server had no IPv4 address configured.

## Root Cause

```text
Server FastEthernet0: Up
IPv4 Address: <not set>
```

The DHCP service and LAN pool already existed, but the server interface itself was not addressed.

## Resolution

```text
IPv4 Address: 192.168.1.20
Subnet Mask:  255.255.255.0
```

No router exists in this lab, so no default gateway is required for local client-to-server communication.

## Final Validation

```text
PC0 -> 192.168.1.1
PC1 -> 192.168.1.2
PC2 -> 192.168.1.3
PC3 -> 192.168.1.4
PC4 -> 192.168.1.5
```

All clients successfully pinged `192.168.1.20` with 0% packet loss.
