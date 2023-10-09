#!/bin/bash

# List of platforms and architectures to build for
platforms=("linux" "darwin" "windows")
architectures=("amd64" "386" "arm" "arm64")

# Loop through each platform and architecture
for platform in "${platforms[@]}"
do
    for architecture in "${architectures[@]}"
    do
        # Set the GOOS and GOARCH environment variables
        export CGO_ENABLED=1
        export GOOS=$platform
        export GOARCH=$architecture

        # Generate the binary name based on platform and architecture
        binary_name="builds/app_${platform}_${architecture}"

        # Build the binary
        go build -o $binary_name

        # Print the build success message
        echo "Built $binary_name"
    done
done
