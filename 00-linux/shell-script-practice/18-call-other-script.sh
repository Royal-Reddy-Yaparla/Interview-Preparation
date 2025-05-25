#!/bin/bash

WISH="Hello  Good morning"

echo "$WISH"
echo "process-id:: $$"

# ./18-testing-script.sh
source ./18-testing-script.sh
 
# differentiation between ./18-testing-script.sh and source ./18-testing-script.sh
# Runs as  new, separate shell.(differenct process id)
# Variables or changes (like cd or export) in script-2 don’t affect script-1.
# Needs execute permission (chmod +x script-2).
# Example: script-2 sets MY_VAR=Hello, but script-1 won’t see MY_VAR.
# Use when: You want script-2 to run independently.


# source ./script-2 (or . ./script-2):
# Runs script-2 in the same shell as script-1.(same process id)
# Variables or changes in script-2 stay in script-1.
# No execute permission needed.
# Example: script-2 sets MY_VAR=Hello, and script-1 can use MY_VAR.
# Use when: You want script-2 to set up variables or settings for script-1.