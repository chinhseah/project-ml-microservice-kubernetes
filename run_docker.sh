#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=mlmicrokuber .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -it --rm --name mlmicrokuber -p 8000:80 mlmicrokuber