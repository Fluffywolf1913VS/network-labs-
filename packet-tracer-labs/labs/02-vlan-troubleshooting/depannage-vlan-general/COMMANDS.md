# General VLAN Troubleshooting Lab - Commands Used

## Verification
```text
show ip interface brief
show running-config
show vlan brief
show interfaces trunk
show interfaces FastEthernet0/1
show interfaces FastEthernet0/3
show interfaces FastEthernet0/1 switchport
show interfaces FastEthernet0/3 switchport
show interfaces FastEthernet0/4 switchport
show mac address-table
show arp
show spanning-tree vlan 10
show port-security interface FastEthernet0/1
```

## Corrective Configuration
```text
configure terminal

interface FastEthernet0/3
 no shutdown

interface GigabitEthernet0/0.20
 no shutdown

interface FastEthernet0/4
 switchport trunk allowed vlan add 20

vlan 20
 name VLAN20

interface FastEthernet0/3
 switchport mode access
 switchport access vlan 20
 no shutdown

interface FastEthernet0/5
 switchport mode trunk
 switchport trunk allowed vlan 10,20,30

interface FastEthernet0/6
 switchport trunk allowed vlan add 10

interface FastEthernet0/1
 switchport mode access
 switchport access vlan 20
 no shutdown

end
```

## Connectivity Tests
```text
ping 192.168.10.1
ping 192.168.20.1
ping 192.168.30.2
ping 192.168.10.254
ping 192.168.20.254
ping 192.168.30.1
```
