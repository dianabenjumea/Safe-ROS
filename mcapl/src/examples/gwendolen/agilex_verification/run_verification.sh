#!/bin/bash

# Absolute path to MCAPL root
MCAPL_ROOT="/Users/user/code/Safe-ROS/mcapl"

# Path to script folder
SCRIPT_DIR="$MCAPL_ROOT/src/examples/gwendolen/agilex_verification"

# Go to MCAPL root so all relative paths work
cd "$MCAPL_ROOT" || exit 1

# List of properties to verify
properties=("1a" "1b" "1c" "2a" "2b" "2c" "3a" "3b" "4a" "4b" "4c" "5" "6a" "6b" "6c" "6d" "6e" "6f")


# Loop over each property
for PROPERTY in "${properties[@]}"; do
    echo "=== Running property $PROPERTY ==="
    java -Xmx8g -cp "bin:lib/3rdparty/RunJPF.jar:lib/3rdparty/*" \
        gov.nasa.jpf.tool.RunJPF \
        "$SCRIPT_DIR/inspection_verification.jpf" \
        +target.args="src/examples/gwendolen/agilex_verification/inspection_verification.ail,src/examples/gwendolen/agilex_verification/inspection_verification.psl,$PROPERTY" \
        2>&1 | tee "$SCRIPT_DIR/verification_results/property_$PROPERTY.txt"
done


