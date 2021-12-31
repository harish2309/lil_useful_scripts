#!/usr/bin/bash
echo 1 > /sys/class/powercap/intel-rapl:0/enabled
echo 125000000 > /sys/class/powercap/intel-rapl:0/constraint_0_power_limit_uw
echo 150000000 > /sys/class/powercap/intel-rapl:0/constraint_1_power_limit_uw
