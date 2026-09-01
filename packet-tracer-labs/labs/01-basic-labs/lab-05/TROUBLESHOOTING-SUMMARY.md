# Troubleshooting Summary - Lab 05

## Symptom
Clients received APIPA addresses such as `169.254.171.206/16`.

## Root Cause
The real LAN was `192.168.1.0/24`, but the DHCP pool started at `192.168.2.1/24`.

## Fix
Change the DHCP pool start address to `192.168.1.1`, save, and renew DHCP on all clients.

## Final Result

```text
PC0 -> 192.168.1.1
PC4 -> 192.168.1.2
PC1 -> 192.168.1.3
PC2 -> 192.168.1.4
PC3 -> 192.168.1.5
```

All clients successfully pinged `192.168.1.18` with 0% loss.
