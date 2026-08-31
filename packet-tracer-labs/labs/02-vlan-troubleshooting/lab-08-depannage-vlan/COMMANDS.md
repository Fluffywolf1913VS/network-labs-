# Lab 08 - Commands Used

## Verification

```text
show ip interface brief
show vlan brief
show interfaces trunk
show mac address-table
```

## Corrective Configuration

```text
enable
configure terminal

interface FastEthernet0/6
 switchport mode access
 switchport access vlan 3

interface FastEthernet0/1
 switchport mode access
 switchport access vlan 2

end
```

## Connectivity Tests

```text
ping 192.168.3.254
ping 192.168.2.1
ping 192.168.4.1
```
