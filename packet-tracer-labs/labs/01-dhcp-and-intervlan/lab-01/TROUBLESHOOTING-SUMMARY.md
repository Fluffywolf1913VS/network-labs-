# Troubleshooting Summary - Lab 01

## Symptom
DHCP clients received APIPA (`169.254.x.x`) or `0.0.0.0` instead of valid leases.

## Findings
- DHCP service was disabled.
- Layer 2 connectivity to `192.168.1.20` was healthy.
- Two DHCP pools overlapped.
- One pool started at `192.168.1.0`, the network address.

## Resolution
- Enable DHCP.
- Use a clean scope beginning at `192.168.1.100`.
- Use mask `255.255.255.0`.
- Renew client leases.

## Validation
Clients received valid `192.168.1.x/24` addresses and successfully pinged `192.168.1.20`.
