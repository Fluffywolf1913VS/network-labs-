# Troubleshooting Notes

## Investigation steps

1. Checked the VLAN database with `show vlan brief`.
2. Checked trunk status with `show interfaces trunk`.
3. Checked spanning tree forwarding state with `show spanning-tree`.
4. Compared Switch0, Switch1, and Switch2.
5. Found that VLAN `999` existed on Switch0 and Switch1, but not on Switch2.
6. Created VLAN `999` on Switch2.
7. Rechecked trunk status and confirmed VLAN `999` was active and forwarding.

## Important observation

Before the fix, Switch2 showed:

```text
Port        Vlans allowed and active in management domain
Fa0/1       1
Fa0/2       1
```

After the fix, Switch2 showed:

```text
Port        Vlans allowed and active in management domain
Fa0/1       1,999
Fa0/2       1,999
```

That change confirmed that the issue was solved at Layer 2.

## Troubleshooting logic

The problem was not that the trunk links were down. The trunk links existed. The problem was that VLAN `999` was missing from the central switch VLAN database.

A switch cannot forward a VLAN that does not exist locally, even if the trunk allows the VLAN range.
