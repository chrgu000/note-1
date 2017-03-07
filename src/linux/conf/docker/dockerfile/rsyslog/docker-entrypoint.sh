#!/bin/bash -x
#
# A helper script for ENTRYPOINT.

set -e

if [ "$1" = 'rsyslogd' ]; then
  crond
  rsyslogd -n
fi

exec "$@"