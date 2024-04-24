#!/bin/bash
# script that will build a kali linux image and build our iso inside
set -eu

IMAGE=tlm1-builder
OPTS=(
   --rm --interactive --tty --net host
    --privileged
    --volume $(pwd):/recipes --workdir /recipes
)

# build docker image if it doesn't exist
docker build -t $IMAGE .
# run the build script inside a container
docker run "${OPTS[@]}" $IMAGE ./build_tracelabsiso_recipe.sh "$@"
