# Lab 07 - Commands Used

## Verification
```text
show ip interface brief
show running-config
```

## Recovery
```text
configure terminal
interface GigabitEthernet0/0.10
 no shutdown
interface GigabitEthernet0/0.20
 no shutdown
interface GigabitEthernet0/0.30
 no shutdown
interface GigabitEthernet0/0.40
 no shutdown
end
```

## Connectivity
```text
ping 192.168.10.254
ping 192.168.20.254
ping 192.168.30.254
ping 192.168.40.254
ping 192.168.20.1
ping 192.168.30.1
ping 192.168.40.1
```
