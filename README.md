<p align="center">
  <img src="https://github.com/user-attachments/assets/3a8d9565-068c-46e9-8bfe-c2f75b00aa47" width="750" alt="Network Engineering Lab">
</p>

<h1 align="center">🌐 Network Engineering & CCNA Lab Portfolio</h1>

<p align="center">
  <strong>Cisco IOS · Routing & Switching · Network Security · Infrastructure Troubleshooting</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Cisco-CCNA-1BA0D7?logo=cisco&logoColor=white">
  <img src="https://img.shields.io/badge/Cisco-Packet%20Tracer-049FD9">
  <img src="https://img.shields.io/badge/Hands--on-Labs-22C55E">
  <img src="https://img.shields.io/badge/Portfolio-Active-blue">
</p>

---

## 🎯 Repository Overview

This repository documents my **hands-on development in network engineering and CCNA-level infrastructure**.

It combines:

- **Cisco IOS configuration**
- **Packet Tracer network topologies**
- **Layer 2 and Layer 3 troubleshooting**
- **Routing and switching protocol verification**
- **Network fault isolation and remediation**
- **Infrastructure security validation**
- **Technical documentation and evidence collection**

The objective is not simply to configure working networks, but to demonstrate a structured engineering process:

> **Baseline → Reproduce → Inspect → Isolate → Remediate → Validate → Document**

---

## 🗂️ Repository Architecture

| Directory | Technical purpose | Repository content |
|:---|:---|:---:|
| **[CCNA](./CCNA/)** | Cisco IOS command references, network fundamentals, Layer 2/Layer 3 troubleshooting exercises, and progressive CCNA projects | **73 files**<br>36 documents<br> |
| **[packet-tracer-labs](./packet-tracer-labs/)** | Practical Packet Tracer implementations covering switching, routing, infrastructure services, network security, and fault remediation |<br>17 `.pkt` topologies<br> |
| **[CCNA-Exam-lab](./CCNA-Exam-lab/)** | Day-by-day CCNA 200-301 tracker covering switching, routing, services, security, wireless networking, and automation | **48 referenced labs** |
| **[assets](./assets/)** | Visual resources used in the repository documentation | Repository banner |

> **Note:** File counts represent the repository state when this overview was prepared.

---

## 🔌 Layer 2 Switching

- **Ethernet frame forwarding**
- **MAC address-table analysis**
- **VLAN creation and segmentation**
- **Access-port configuration**
- **IEEE 802.1Q trunking**
- **Native VLAN troubleshooting**
- **Allowed-VLAN verification**
- **Access/trunk mode mismatch detection**
- **STP and RSTP topology analysis**
- **Root bridge and port-state verification**
- **EtherChannel link aggregation**
- **Port security**
- **DHCP snooping**
- **Dynamic ARP Inspection**

---

## 🛣️ Layer 3 Routing

- **IPv4 and IPv6 addressing**
- **Subnetting and VLSM**
- **Static and default routing**
- **Floating static routes**
- **Router-on-a-stick**
- **Multilayer switching**
- **Inter-VLAN routing**
- **OSPF adjacency and route advertisement**
- **HSRP first-hop redundancy**
- **GRE tunnel fundamentals**

---

## ⚙️ Infrastructure Services

| Service | Technical coverage |
|:---|:---|
| **DHCP** | Address pools, exclusions, lease validation, and DHCP relay |
| **DNS** | Name-resolution configuration and validation |
| **NTP** | Time synchronization and clock hierarchy |
| **SNMP** | Infrastructure monitoring fundamentals |
| **Syslog** | Centralized event and message logging |
| **SSH** | Secure remote administration |
| **FTP/TFTP** | Network file-transfer services |
| **CDP/LLDP** | Layer 2 neighbor discovery |
| **NAT/PAT** | Static NAT, Dynamic NAT, and address translation |
| **QoS** | Traffic classification and prioritization |
| **Wireless** | WLAN architecture, security, and configuration |

---

## 🔐 Network Security

- **Standard and extended access control lists**
- **Layer 2 network segmentation**
- **Switch-port security**
- **DHCP snooping**
- **Dynamic ARP Inspection**
- **Static NAT, Dynamic NAT, and PAT**
- **Site-to-site IPsec VPN**
- **Infrastructure hardening**
- **Secure remote management**
- **Traffic-path validation**

---

## 🔍 Troubleshooting Methodology

### 1. Baseline the topology

Identify the network devices, interfaces, VLANs, IP subnets, default gateways, trunk links, and expected traffic paths.

### 2. Reproduce the failure

Confirm the connectivity issue with `ping`, `traceroute`, `ipconfig`, and ARP inspection.

### 3. Inspect Layer 1

Validate:

- Physical connectivity
- Administrative interface status
- Speed and duplex settings
- Interface errors

### 4. Inspect Layer 2

Validate:

- VLAN membership
- Access and trunk modes
- Allowed VLANs
- MAC address learning
- EtherChannel state
- Spanning-tree operation

### 5. Inspect Layer 3

Validate:

- IPv4/IPv6 addressing
- Subnet masks
- Default gateways
- ARP resolution
- Router interfaces
- Routing-table entries
- OSPF neighbor relationships

### 6. Isolate the root cause

Compare the **observed network state** with the **intended network design**.

### 7. Apply remediation

Implement the minimum controlled **Cisco IOS configuration change** required to resolve the fault.

### 8. Validate recovery

Repeat connectivity tests and capture CLI or Packet Tracer evidence.

### 9. Document the incident

Record the:

- Symptoms
- Diagnostic commands
- Root cause
- Corrective configuration
- Final validation results

---

## 💻 Core Cisco IOS Commands

| Category | Commands |
|:---|:---|
| **Interfaces** | `show ip interface brief`, `show interfaces`, `show interfaces status` |
| **VLANs and trunks** | `show vlan brief`, `show interfaces trunk` |
| **Layer 2 forwarding** | `show mac address-table`, `show spanning-tree` |
| **EtherChannel** | `show etherchannel summary` |
| **Routing** | `show ip route`, `show ip protocols`, `show ip ospf neighbor` |
| **Security** | `show access-lists`, `show port-security` |
| **NAT** | `show ip nat translations`, `show ip nat statistics` |
| **Discovery** | `show cdp neighbors detail`, `show lldp neighbors detail` |
| **Connectivity** | `ping`, `traceroute` |

---

## 🧰 Technical Skills Demonstrated

<p align="center">

`Cisco IOS` · `Packet Tracer` · `IPv4/IPv6` · `Subnetting` · `VLSM`  
`VLANs` · `IEEE 802.1Q` · `STP/RSTP` · `EtherChannel`  
`Inter-VLAN Routing` · `Static Routing` · `OSPF` · `HSRP`  
`ACLs` · `NAT/PAT` · `DHCP Relay` · `CDP/LLDP`  
`IPsec VPN` · `Network Troubleshooting`

</p>

---

## 🚀 Portfolio Objective

This repository supports my progression toward:

- **Network Security Engineer**
- **Infrastructure Security Engineer**
- **Cloud Security Engineer**
- **OT/ICS Security Engineer**

It provides practical evidence of **network configuration, protocol analysis, structured troubleshooting, fault remediation, and security-focused infrastructure validation**.

---

<p align="center">
  <strong>Built through hands-on configuration, troubleshooting, validation, and continuous learning.</strong>
</p>
