# Commands - Lab 04

## Client troubleshooting

Check current addressing:

```text
ipconfig
```

Force a DHCP renewal:

```text
ipconfig /renew
```

Test connectivity to the DHCP server:

```text
ping 192.168.1.18
```

## Temporary static test

PC0 was temporarily configured as:

```text
IP Address:      192.168.1.10
Subnet Mask:     255.255.255.0
Default Gateway: 0.0.0.0
```

Then tested with:

```text
ping 192.168.1.18
```

## Switch troubleshooting commands

Useful Cisco IOS commands used during investigation:

```text
enable
show spanning-tree vlan 1
show mac address-table
```

If running a show command from configuration mode:

```text
do show spanning-tree vlan 1
```

or return to privileged EXEC mode first:

```text
end
```

## Packet Tracer Simulation

Simulation Mode was filtered to DHCP only.

Observed sequence:

```text
DHCP Discover
DHCP Offer
DHCP Request
DHCP ACK
```
