#!/bin/sh

# Tonton Jo - 2023
# Version 1.0

# Sleeping to leave some time for network to be up
echo "- Sleeping 15 seconds"
sleep 15

curl -fsSL https://get.casaos.io | bash

# Self deleting
rm -f $0
