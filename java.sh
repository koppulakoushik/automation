#!/bin/bash

# Get the parameter passed from Jenkins
PARAMS=$1

# Debugging: Output the raw PARAMS value to check what is passed
echo "Raw PARAMS passed from Jenkins: '$PARAMS'"

# Ensure the parameter is not empty
if [ -z "$PARAMS" ]; then
    echo "No parameters provided. Please provide both version and flavor. Usage: ./java.sh 'version flavor'"
    exit 1
fi

# Convert PARAMS to a string (in case it's not a string)
PARAMS_STR=$(echo "$PARAMS")

# Split the parameter into version and flavor using space as a delimiter
VER=$(echo $PARAMS_STR | cut -d ' ' -f 1)
FLAVOR=$(echo $PARAMS_STR | cut -d ' ' -f 2)

# Check if both version and flavor are provided
if [ -z "$VER" ] || [ -z "$FLAVOR" ]; then
    echo "Invalid input. Please provide both version and flavor. Usage: ./java.sh 'version flavor'"
    exit 1
fi

# Debugging: Output the values of VER and FLAVOR to verify they are split correctly
echo "Version: $VER"
echo "Flavor: $FLAVOR"

echo "Downloading and processing JDK version $VER, flavor $FLAVOR..."

# Continue with your original script logic...
