# Cisco Packet Tracer Networking Portfolio

This section contains completed and documented Cisco Packet Tracer projects focused on practical network troubleshooting.

The objective is to demonstrate troubleshooting methodology, root-cause analysis, Cisco IOS configuration, and connectivity validation.

## Lab Categories

| Category | Description |
|---|---|
| 01 DHCP & Inter-VLAN | DHCP troubleshooting, APIPA, Router-on-a-Stick, DHCP relay and inter-VLAN connectivity |
| 02 VLAN Troubleshooting | VLAN configuration, access ports, trunks and Layer 2 troubleshooting |
| 03 IP Troubleshooting | IPv4 addressing, subnet masks, default gateways and connectivity troubleshooting |
| 04 VPN IPsec | Site-to-site IPsec VPN configuration and validation |

## 01 - DHCP & Inter-VLAN Troubleshooting

Path: `labs/01-dhcp-and-intervlan`

Scenarios include:

- DHCP service disabled
- APIPA addressing
- DHCP server configuration errors
- DHCP pool exhaustion
- Incorrect DHCP subnet configuration
- Router-on-a-Stick
- 802.1Q trunks
- Inter-VLAN routing
- DHCP relay
- `ip helper-address`
- Default gateway troubleshooting

## 02 - VLAN Troubleshooting

Path: `labs/02-vlan-troubleshooting`

Topics include:

- VLAN creation and verification
- Access port configuration
- Incorrect VLAN assignments
- Trunk troubleshooting
- Allowed VLANs
- Router subinterfaces
- MAC address table analysis
- Inter-VLAN connectivity

## 03 - IP Troubleshooting

Path: `labs/03-ip-troubleshooting`

Topics include:

- IPv4 addressing
- Subnet masks
- Default gateways
- VLAN / subnet mismatches
- Router-on-a-Stick connectivity
- End-to-end ping validation

## 04 - Site-to-Site IPsec VPN

Path: `labs/04-vpn-ipsec`

Includes:

- Site-to-site IPsec VPN architecture
- Router configurations
- IPsec configuration
- Network topology documentation
- VPN connectivity validation

## Troubleshooting Methodology

1. Identify the symptom.
2. Verify physical connectivity and interface status.
3. Check VLANs and trunks.
4. Verify IP addressing, subnet masks and gateways.
5. Check routing and DHCP relay when required.
6. Apply the smallest necessary correction.
7. Validate end-to-end connectivity.
8. Document the root cause and resolution.

## Common Commands

```text
ipconfig
ping
show ip interface brief
show running-config
show vlan brief
show interfaces trunk
show mac address-table
show spanning-tree
```

## Objective

This portfolio demonstrates practical Cisco networking and troubleshooting skills through documented Packet Tracer scenarios rather than a collection of unfinished exercises.
