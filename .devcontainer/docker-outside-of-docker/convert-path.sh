#!/bin/bash

# Check if /mnt/c exists (indicating WSL/Windows)
if [ -d "/mnt/c" ]; then
    # Convert Windows path to UNIX path
    WORKSPACE_MOUNT_SOURCE=$(wslpath -u "${LOCAL_WORKSPACE_FOLDER}")
else
    # Use the path as is (Linux/macOS)
    WORKSPACE_MOUNT_SOURCE="${LOCAL_WORKSPACE_FOLDER}"
fi

# Output the result
echo "WORKSPACE_MOUNT_SOURCE=${WORKSPACE_MOUNT_SOURCE}"
