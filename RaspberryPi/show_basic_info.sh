#!/bin/bash


cpu=$(</sys/class/thermal/thermal_zone0/temp)

echo "$(date) @ $(hostname)"
echo "-------------------------------------------"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU => $((cpu/1000))'C"


echo "-------------------------------------------"
cat /proc/version


echo "-------------------------------------------"
vcgencmd get_mem arm && vcgencmd get_mem gpu


echo "-------------------------------------------"
echo "$(cat /proc/device-tree/model)"
