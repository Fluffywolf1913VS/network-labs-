



<img width="609" height="361" alt="Capture d’écran 2026-09-12 à 16 12 33" src="https://github.com/user-attachments/assets/3a8d9565-068c-46e9-8bfe-c2f75b00aa47" />


<img width="609" height="361" alt="Network Engineering Lab" src="https://github.com/user-attachments/assets/3a8d9565-068c-46e9-8bfe-c2f75b00aa47" />

Network Engineering & CCNA Lab Portfolio

Cisco IOS · Routing & Switching · Network Security · Infrastructure Troubleshooting






Repository Overview

This repository documents my hands-on development in network engineering and CCNA-level infrastructure.

It combines Cisco IOS configuration, Packet Tracer network topologies, protocol verification, Layer 2 and Layer 3 fault isolation, configuration remediation, and technical documentation.

Repository Architecture
Directory	Technical purpose	Repository content
CCNA	Network fundamentals, Cisco IOS CLI references, structured Layer 2/Layer 3 troubleshooting exercises, and progressive CCNA projects	73 files: 36 technical documents and 37 validation screenshots
packet-tracer-labs	Practical Cisco Packet Tracer implementations covering switching, routing, infrastructure services, network security, and fault remediation	218 files: including 17 .pkt topologies and 113 screenshots
CCNA-Exam-lab	Day-by-day CCNA 200-301 lab tracker covering switching, routing, network services, security, wireless networking, and automation	48 referenced Packet Tracer labs
assets	Visual resources used by the repository documentation	Network portfolio banner

File counts represent the repository state when this overview was prepared.

Technical Coverage
Layer 2 Switching
Ethernet frame forwarding
MAC address-table analysis
VLAN creation and access-port assignment
IEEE 802.1Q trunk configuration
Native VLAN troubleshooting
Allowed-VLAN verification
Access/trunk mode mismatch detection
STP and RSTP topology analysis
Root bridge and port-state verification
EtherChannel link aggregation
Port security
DHCP snooping
Dynamic ARP Inspection
Layer 3 Routing
IPv4 and IPv6 addressing
Subnetting and Variable Length Subnet Masking
Static and default routing
Floating static routes
Router-on-a-stick
Multilayer switching
Inter-VLAN routing
OSPF adjacency and route advertisement
HSRP first-hop redundancy
GRE tunnel fundamentals
Infrastructure Services
DHCP pools, exclusions, and lease validation
DHCP relay using ip helper-address
Domain Name System
Network Time Protocol
Simple Network Management Protocol
Syslog
Secure Shell administration
FTP and TFTP
CDP and LLDP neighbor discovery
Voice VLANs
Quality of Service
Wireless LAN configuration
Network Security
Standard and extended access control lists
Layer 2 network segmentation
Switch-port security
DHCP snooping
Dynamic ARP Inspection
Static NAT, Dynamic NAT, and PAT
Site-to-site IPsec VPN
Infrastructure hardening
Secure remote management
Traffic-path validation
Troubleshooting Methodology
Baseline the topology — identify devices, interfaces, VLANs, subnets, gateways, and expected traffic paths.
Reproduce the failure — confirm the problem using connectivity tests.
Inspect Layer 1 — verify cabling, interface state, speed, duplex, and administrative status.
Inspect Layer 2 — validate VLAN membership, trunking, MAC learning, EtherChannel, and spanning-tree state.
Inspect Layer 3 — verify addressing, subnet masks, ARP resolution, gateways, and routing-table entries.
Isolate the root cause — compare the observed state with the intended network design.
Apply remediation — implement the minimum required Cisco IOS configuration change.
Validate recovery — repeat connectivity tests and capture technical evidence.
Document the incident — record the symptoms, diagnostic commands, root cause, corrective action, and final result.
Core Cisco IOS Commands

show running-config
show ip interface brief
show interfaces
show interfaces trunk
show vlan brief
show mac address-table
show spanning-tree
show etherchannel summary
show ip route
show ip protocols
show ip ospf neighbor
show access-lists
show ip nat translations
show cdp neighbors detail
show lldp neighbors detail
ping
traceroute

Skills Demonstrated

Cisco IOS · Packet Tracer · IPv4/IPv6 · Subnetting · VLSM · VLANs · IEEE 802.1Q · STP/RSTP · EtherChannel · Inter-VLAN Routing · Static Routing · OSPF · ACLs · NAT/PAT · DHCP Relay · HSRP · CDP/LLDP · IPsec VPN · Network Troubleshooting

Portfolio Objective

This repository supports my progression toward Network Security Engineering, Infrastructure Security, Cloud Security, and OT/ICS Security roles.

It provides practical evidence of network configuration, protocol analysis, structured troubleshooting, fault remediation, and security-focused infrastructure validation.
