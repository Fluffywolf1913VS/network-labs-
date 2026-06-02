#!/usr/bin/env bash
# Run these commands from the root of your local clone of https://github.com/Fluffywolf1913VS/network-labs-

LAB_PATH="packet-tracer-labs/labs/02-vlan-troubleshooting/lab-03-depannage-vlan"

mkdir -p "$LAB_PATH"
cp -R lab-03-depannage-vlan/* "$LAB_PATH"/

git add "$LAB_PATH"
git commit -m "Document VLAN troubleshooting lab 03"
git push origin main
