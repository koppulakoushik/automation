#!/bin/bash

# Get the single parameter passed from Jenkins
PARAMS=$1

# Ensure the parameter is a string and handle it properly
if [ -z "$PARAMS" ]; then
    echo "No parameters provided. Please provide both version and flavor. Usage: ./java.sh 'version flavor'"
    exit 1
fi

# Convert PARAMS to a string (in case it's not a string)
PARAMS_STR=$(echo "$PARAMS" | tr -s ' ')

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

# The rest of your original script goes here...
# Here’s a summary of what it does:
#
# 1. Downloads the latest JDK release from the GitHub API based on version.
# 2. Downloads and extracts the JDK archive.
# 3. Imports necessary certificates into the JDK's truststore.
# 4. Compresses the new JDK version and uploads it to Artifactory.

echo "Downloading and processing JDK version $VER, flavor $FLAVOR..."

# Continue the script...
