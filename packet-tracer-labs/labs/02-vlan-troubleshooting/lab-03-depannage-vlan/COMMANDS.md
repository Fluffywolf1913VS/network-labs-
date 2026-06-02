# Commands – Lab 03 VLAN Troubleshooting

## Router0

```bash
enable
show ip interface brief
```

Expected:

```text
GigabitEthernet0/0     unassigned      up    up
GigabitEthernet0/0.2   192.168.2.254   up    up
GigabitEthernet0/0.10  10.255.255.254  up    up
```

## Switch0

```bash
enable
show vlan brief
configure terminal
vlan 10
 name VLAN0010
end
show vlan
show interfaces trunk
```

## Switch1

```bash
enable
show vlan brief
show interfaces trunk
```

## PC0

```bash
ipconfig
ping 192.168.2.254
ping 10.0.0.1
```

## PC1

```bash
ipconfig
ping 10.255.255.254
ping 192.168.2.1
```
