#!/bin/bash
watch -t 'echo  -n "\nScaling governor      : "; cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor;echo -n "CPU driver            : ";cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_driver | head -n 1; echo -n "Cpu Core Frequency Hz :";printf "%10s %10s %10s %10s\n" $(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq | sed -r ":a;s/(^|[^0-9.])([0-9]+)([0-9]{3})/\1\2,\3/g;ta");echo -n "Memory                :\n";free -m;echo -n "\nSensors:\n";sensors'

