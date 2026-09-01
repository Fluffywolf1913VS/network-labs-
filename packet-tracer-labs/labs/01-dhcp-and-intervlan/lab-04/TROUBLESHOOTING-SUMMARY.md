# Troubleshooting Summary - Lab 04

## Symptom

DHCP clients failed to obtain addresses and received APIPA or `0.0.0.0`.

Example:

```text
169.254.171.206 /16
```

## Troubleshooting path

1. Verified DHCP service state.
2. Inspected the DHCP pool.
3. Confirmed client DHCP configuration.
4. Checked the Layer 2 topology and STP state.
5. Assigned PC0 a temporary static address.
6. Tested connectivity to `192.168.1.18`.
7. Investigated the DHCP server's physical interfaces.
8. Identified a server NIC mismatch.
9. Reconnected the server to `FastEthernet0`.
10. Verified DHCP DORA in Simulation Mode.
11. Validated all five clients.

## Primary Fault

The DHCP server had two NICs.

The IP address and DHCP service were configured on:

```text
FastEthernet0
192.168.1.18/24
```

but the physical network connection was using the other server NIC.

This left the configured DHCP interface unavailable to the LAN.

## Fix

Reconnect the server through `FastEthernet0` to Switch2.

Final interface state:

```text
FastEthernet0  Up    192.168.1.18/24
Ethernet1      Down  <not set>
```

## DHCP Scope

Final LAN scope:

```text
Start IP:      192.168.1.20
Mask:          255.255.255.0
Max Users:     235
Gateway:       192.168.1.254
DNS:           8.8.8.8
```

The change from 236 to 235 users prevents the pool from extending to the `.255` broadcast address.

## Verification

Packet Tracer Simulation Mode confirmed:

```text
Discover -> Offer -> Request -> ACK
```

Final leases:

```text
PC0  192.168.1.20
PC1  192.168.1.21
PC2  192.168.1.22
PC3  192.168.1.23
PC4  192.168.1.24
```

Every PC successfully pinged:

```text
192.168.1.18
```

with:

```text
Sent = 4
Received = 4
Lost = 0
```

## Root Cause

**Physical/server-interface mismatch:** the DHCP server configuration was on `FastEthernet0`, while the physical network connection was using another NIC.
