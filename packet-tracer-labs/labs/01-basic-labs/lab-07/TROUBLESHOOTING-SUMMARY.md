# Troubleshooting Summary - Lab 07

## Symptoms

- PC0 in VLAN 10 had a valid DHCP address but could not reach `192.168.1.254`.
- PC3 in VLAN 20 received APIPA `169.254.x.x`.
- Router subinterfaces were already `up/up`.
- DHCP pools for both VLANs existed.
- `ip helper-address 192.168.1.18` already existed on `G0/0.20`.

## Fault 1 - Router-facing switchport

The router MAC address appeared on:

```text
GigabitEthernet0/2
```

The actual router uplink therefore needed to carry both VLAN 10 and VLAN 20 as an 802.1Q trunk.

Fix:

```text
interface gigabitEthernet0/2
 switchport mode trunk
 no shutdown
```

Result:

```text
PC0 -> 192.168.1.254 = success
Router0 -> PC0 = success
Router0 -> DHCP server = success
```

## Fault 2 - DHCP server default gateway

After fixing the trunk:

```text
Server -> 192.168.1.254 = success
Server -> 192.168.2.254 = failure
```

This indicated that local Layer 2 communication worked but the server had no route to the remote VLAN.

Fix:

```text
Default Gateway: 192.168.1.254
```

Result:

```text
Server -> 192.168.2.254 = success
PC3 receives 192.168.2.21/24
```

## Final Result

- VLAN 10 routing: PASS
- VLAN 20 routing: PASS
- DHCP relay: PASS
- DHCP return path: PASS
- Inter-VLAN routing: PASS
- APIPA resolved: PASS
