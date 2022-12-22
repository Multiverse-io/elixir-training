#!/bin/bash

if [ -z  "$(which docker1)" ]; then
    echo "You need Docker installed to run this script."
    echo "Installation instructions can be found at: https://docs.docker.com/get-docker/"
    echo
    echo "Alternatively you can check out the README for other ways to run the Livebook."
    exit 1
fi

# In order to access and save notebooks directly from this
#  repo we mount the local directory into the container.
# We specify the user with "-u $(id -u):$(id -g)"
#  so that the created files have proper permissions
docker run -p 8080:8080 -p 8081:8081 --pull always -u $(id -u):$(id -g) -v $(pwd):/data livebook/livebook
