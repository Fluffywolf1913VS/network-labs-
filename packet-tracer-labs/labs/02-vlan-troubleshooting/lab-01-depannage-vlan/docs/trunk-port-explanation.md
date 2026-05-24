# Trunk Port Explanation

A trunk port is a switch interface configured to carry traffic for more than one VLAN.

## Why trunks are needed

When all devices are connected to the same switch, VLAN traffic can stay local to that switch. But when devices in the same VLAN are connected to different switches, that VLAN must be transported across the links between switches.

That is the role of a trunk port.

In this lab:

```text
PC0 / PC1 → Switch0 → Switch2 → Switch1 → PC2 / PC3
```

The links between switches must be trunks because VLAN `999` must cross the inter-switch links.

## 802.1Q tagging

On Cisco switches, trunk ports normally use 802.1Q. 802.1Q adds a VLAN tag to Ethernet frames. The tag tells the receiving switch which VLAN the frame belongs to.

Example:

```text
Frame from VLAN 999 + 802.1Q tag = trunked VLAN 999 frame
```

When the frame exits toward a PC on an access port, the tag is removed.

## Native VLAN

The native VLAN is the VLAN that is sent untagged on an 802.1Q trunk. In this lab, the native VLAN stayed as VLAN `1`.

From the verification output:

```text
Native vlan
1
```

## Common trunk problems

| Problem | Symptom | Fix |
|---|---|---|
| Missing VLAN on a switch | VLAN not listed as active on trunk | Create the VLAN on that switch |
| Port not trunking | `show interfaces trunk` does not list the port | Configure `switchport mode trunk` |
| VLAN not allowed | VLAN missing from allowed list | Configure allowed VLANs |
| Native VLAN mismatch | Warnings or unexpected connectivity issues | Match native VLAN on both ends |
| Wrong access VLAN | PC cannot reach same-VLAN devices | Assign the correct VLAN to the PC port |

## Key command

```cisco
show interfaces trunk
```

The most important lines are:

```text
Vlans allowed and active in management domain
Vlans in spanning tree forwarding state and not pruned
```

For this lab, the correct final result was:

```text
Fa0/1       1,999
Fa0/2       1,999
```
