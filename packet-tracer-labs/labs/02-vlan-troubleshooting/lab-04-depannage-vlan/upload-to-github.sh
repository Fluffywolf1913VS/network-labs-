#!/usr/bin/env bash
set -euo pipefail

REPO_PATH="${1:-$HOME/network-labs-}"
LAB_DEST="$REPO_PATH/packet-tracer-labs/labs/02-vlan-troubleshooting/lab-04-depannage-vlan"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$LAB_DEST"

# Do not use --delete here: it may remove the Packet Tracer .pkt file already present in files/.
rsync -av "$SCRIPT_DIR/" "$LAB_DEST/"

echo
echo "Copied Lab 04 documentation to: $LAB_DEST"
echo "Any existing files/*.pkt file was preserved."
echo
git -C "$REPO_PATH" status
