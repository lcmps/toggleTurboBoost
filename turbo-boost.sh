#!/bin/bash
    echo "Turbo Boost Status:"
    if [[ $1 == "off" ]]; then
        echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo
    fi
    if [[ $1 == "on" ]]; then
        echo 0 > /sys/devices/system/cpu/intel_pstate/no_turbo
    fi

    state=$( cat /sys/devices/system/cpu/intel_pstate/no_turbo )
    if [[ $state -eq 1 ]]; then
        echo "Off"
    else
        echo "On"
    fi
