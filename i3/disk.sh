#! /bin/bash

df -h / | awk '/dev\/sda1/ {print $4,$5}'
