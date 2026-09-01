# DHCP and APIPA Flow

## DHCP DORA
```text
Client                                  DHCP Server
  |------ DHCP DISCOVER ------------------->|
  |<--------- DHCP OFFER -------------------|
  |------ DHCP REQUEST -------------------->|
  |<---------- DHCP ACK --------------------|
```

## APIPA fallback
If DHCP cannot complete, the client may self-assign an address from `169.254.0.0/16`.

```text
DHCP success -> 192.168.1.x/24
DHCP failure -> 169.254.x.x/16 (APIPA)
```

## Quick troubleshooting checklist
1. Is DHCP enabled on the client?
2. Is the DHCP server reachable at Layer 2?
3. Is the DHCP service enabled?
4. Is the DHCP scope in the correct subnet?
5. Is the pool exhausted?
6. Are VLANs or trunks blocking the broadcast path?
