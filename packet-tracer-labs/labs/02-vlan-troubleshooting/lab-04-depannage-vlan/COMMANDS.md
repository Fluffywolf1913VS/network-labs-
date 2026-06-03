# Commands — Lab 04 VLAN troubleshooting

## Router0 checks

```bash
enable
show ip interface brief
show running-config
```

Expected router-on-a-stick interfaces:

```text
GigabitEthernet0/0      unassigned        up/up
GigabitEthernet0/0.10   192.168.10.254    up/up
GigabitEthernet0/0.20   192.168.20.254    up/up
```

## Switch VLAN checks

Run on Switch0, Switch1, and Switch2:

```bash
enable
show vlan brief
```

Expected VLANs:

```text
10   VLAN0010   active
20   VLAN0020   active
```

## Trunk checks

Run on each switch:

```bash
show interfaces trunk
```

For this lab, the important finding was on Switch2:

```text
Fa0/3       10
```

This showed that VLAN 20 was not allowed on the trunk.

## Fix on Switch2

```bash
enable
configure terminal
interface fa0/3
switchport trunk allowed vlan 10,20
end
```

## Verify the fix

```bash
show interfaces trunk
```

Expected on Switch2:

```text
Fa0/3       10,20
```

## PC validation

From PC0:

```bash
ping 192.168.10.254
ping 192.168.20.1
ping 192.168.20.2
```

From PC3:

```bash
ping 192.168.20.254
ping 192.168.10.1
```

## Save configuration

Run on switches and router after the fix:

```bash
write memory
```

or:

```bash
copy running-config startup-config
```
