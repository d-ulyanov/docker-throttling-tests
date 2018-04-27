#!/bin/bash

prev=$(cat /sys/fs/cgroup/cpu/test/cpu.stat | tail -1 | cut -d ' ' -f 2)

while sleep 1; do
    new=$(cat /sys/fs/cgroup/cpu/test/cpu.stat | tail -1 | cut -d ' ' -f 2)
    echo "$((new-prev))"
    prev=$new
done <<<$(find . -type f)
