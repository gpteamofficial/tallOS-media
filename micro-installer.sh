#!/usr/bin/env bash

set -e

# self-sudo
if [ "$EUID" -ne 0 ]; then
  exec sudo -E "$0" "$@"
fi

cd /tmp
curl -fsSL https://getmic.ro | bash >/dev/null 2>&1
install -m 755 micro /usr/bin/micro
rm -f micro
