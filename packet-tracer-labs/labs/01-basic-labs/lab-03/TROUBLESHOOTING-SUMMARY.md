# Troubleshooting Summary - Lab 03

## Symptom

Three clients received valid DHCP leases while PC2 and PC3 received APIPA addresses.

```text
PC2 -> 169.254.89.110/16
PC3 -> 169.254.155.216/16
```

## Root Cause

The DHCP pool was limited to three users:

```text
Maximum Number of Users: 3
```

The topology contained five DHCP clients. Packet Tracer also retained a built-in overlapping `serverPool`, so its values were aligned during remediation.

## Resolution

Increase usable DHCP capacity to five clients, align the default pool, restart DHCP, and renew the failed clients.

## Final Result

```text
PC0 -> 192.168.1.1
PC4 -> 192.168.1.2
PC1 -> 192.168.1.3
PC2 -> 192.168.1.4
PC3 -> 192.168.1.5
```

PC2 and PC3 successfully pinged the DHCP server at `192.168.1.20` with 0% packet loss.
