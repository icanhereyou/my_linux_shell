#!/bin/bash

echo "cpu_name.sh: 查看CPU个数"

echo "查看物理CPU个数"
cat /proc/cpuinfo| grep "physical id"| sort| uniq| wc -l

echo "查看每个物理CPU中core的个数(即核数)"
cat /proc/cpuinfo| grep "cpu cores"| uniq

echo "查看逻辑CPU的个数"
cat /proc/cpuinfo| grep "processor"| wc -l