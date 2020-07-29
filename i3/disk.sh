#! /bin/bash

df -h | awk '/dev\/sda1/ {print $3,$5}'
