# Router-on-a-Stick Configuration - Lab 07

## Physical Router Interface

```text
GigabitEthernet0/0
```

No IPv4 address is required on the parent interface because the Layer 3 addresses are placed on subinterfaces.

## VLAN 10 Subinterface

```text
interface GigabitEthernet0/0.10
 encapsulation dot1Q 10
 ip address 192.168.1.254 255.255.255.0
```

This acts as the default gateway for VLAN 10.

## VLAN 20 Subinterface

```text
interface GigabitEthernet0/0.20
 encapsulation dot1Q 20
 ip address 192.168.2.254 255.255.255.0
 ip helper-address 192.168.1.18
```

This acts as:

- VLAN 20 default gateway
- DHCP relay agent for VLAN 20

## Required Switch Port

The switch interface connected to the router must be a trunk:

```text
interface GigabitEthernet0/2
 switchport mode trunk
```

Router-on-a-Stick fails if the switch sends only one untagged access VLAN toward the router.
