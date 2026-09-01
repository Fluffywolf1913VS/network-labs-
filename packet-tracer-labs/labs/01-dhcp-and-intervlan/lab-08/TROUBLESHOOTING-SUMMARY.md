# Troubleshooting Summary - Lab 08

## Symptom

A client in VLAN 20 could not obtain a valid DHCP lease.

## Known-good addressing

```text
VLAN 10: 192.168.1.0/24
Gateway: 192.168.1.254

VLAN 20: 192.168.2.0/24
Gateway: 192.168.2.254

DHCP Server: 192.168.1.19/24
```

## Fault

Router0 used:

```text
ip helper-address 192.168.1.18
```

The actual DHCP server was:

```text
192.168.1.19
```

## Fix

```text
interface GigabitEthernet0/0.20
 no ip helper-address 192.168.1.18
 ip helper-address 192.168.1.19
```

## Result

PC3 obtained:

```text
192.168.2.1/24
Gateway 192.168.2.254
```

and successfully pinged:

```text
192.168.2.254
192.168.1.19
```

with 0% packet loss.
