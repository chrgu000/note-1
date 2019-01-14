#!/bin/bash
set -o errexit

service ssh start
/usr/bin/supervisord -n