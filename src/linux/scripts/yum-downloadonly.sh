#!/bin/bash

for var in "$@"
do
    yum install "$var" --downloadonly --downloaddir=/root/rpm 
done