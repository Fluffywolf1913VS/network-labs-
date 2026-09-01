# Commands - Lab 08

## Router verification

```text
enable
show running-config
show ip interface brief
```

## Correct DHCP relay

```text
configure terminal
interface GigabitEthernet0/0.20
no ip helper-address 192.168.1.18
ip helper-address 192.168.1.19
end
```

## Verify final configuration

```text
show running-config
```

Expected:

```text
interface GigabitEthernet0/0.20
 encapsulation dot1Q 20
 ip address 192.168.2.254 255.255.255.0
 ip helper-address 192.168.1.19
```

## Client verification

```text
ipconfig
ping 192.168.2.254
ping 192.168.1.19
```
