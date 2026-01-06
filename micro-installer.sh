#!/usr/bin/env bash
set -e

TMP_DIR="$(mktemp -d)"
cd "$TMP_DIR"

curl -fsSL https://getmic.ro | bash

sudo install -m 755 micro /usr/bin/micro

cd /
rm -rf "$TMP_DIR"
