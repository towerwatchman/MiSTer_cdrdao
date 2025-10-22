#!/bin/sh
# Installs cdrdao and toc2cue to /usr/bin/ on MiSTer
# Run this script manually from the Scripts directory

echo "Installing cdrdao and toc2cue to /usr/bin/"

# Check if running on MiSTer (basic check for /media/fat)
if [ ! -d "/media/fat" ]; then
    echo "Error: This script is intended to run on a MiSTer system."
    exit 1
fi

# Check if the binaries exist in the current directory
if [ ! -f "/media/fat/_Utility/cdrdao" ] || [ ! -f "/media/fat/_Utility/toc2cue" ]; then
    echo "Error: cdrdao or toc2cue not found in /media/fat/_Utility/"
    exit 1
fi

# Copy binaries to /usr/bin/ with executable permissions
echo "Copying cdrdao to /usr/bin/"
cp /media/fat/_Utility/cdrdao /usr/bin/cdrdao
chmod +x /usr/bin/cdrdao

echo "Copying toc2cue to /usr/bin/"
cp /media/fat/_Utility/toc2cue /usr/bin/toc2cue
chmod +x /usr/bin/toc2cue

echo "Installation complete! cdrdao and toc2cue are now in /usr/bin/"
