#!/usr/bin/env bash
set -e

if [ "$EUID" -ne 0 ]; then
  exec sudo bash -s "$@" < /dev/stdin
fi

cd /tmp
curl -fsSL https://getmic.ro | bash >/dev/null 2>&1
install -m 755 micro /usr/bin/micro
rm -f micro
