#!/bin/bash
# checks for either Podman or Docker, then builds the container image and runs it
# normal args can be passed to the build.sh script, e.g. --no-cache
set -eu

IMAGE=tlm1-builder
OPTS=(
   --rm --interactive --tty --net host
    --privileged
    --volume $(pwd):/recipes -v $(pwd)/images/:/images --workdir /recipes
)

bold() { tput bold; echo "$@"; tput sgr0; }
vrun() { bold "$" "$@"; "$@"; }
vexec() { bold "$" "$@"; exec "$@"; }
# build docker image if it doesn't exist
docker build -t $IMAGE .
# run the build script inside a container
docker run "${OPTS[@]}" $IMAGE ./build_tracelabsiso_recipe.sh "$@"
