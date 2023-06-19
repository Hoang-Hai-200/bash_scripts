#!/bin/bash



df -h | awk '0+$5 >= 12 {print}' | awk '{print $5, $1}'
