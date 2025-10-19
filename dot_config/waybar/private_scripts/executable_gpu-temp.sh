#!/bin/bash

# Get GPU temperature using nvidia-smi
temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits 2>/dev/null)

# Check if nvidia-smi command succeeded
if [ -z "$temp" ]; then
    echo '{"text": "N/A", "class": "unknown"}'
    exit 0
fi

# Determine class based on temperature
if [ "$temp" -ge 85 ]; then
    class="critical"
elif [ "$temp" -ge 70 ]; then
    class="warning"
else
    class="normal"
fi

# Output JSON for Waybar
echo "{\"text\": \"${temp}°C\", \"class\": \"${class}\"}"
