#!/bin/bash
#
# This script runs a GHDL simulation inside a Docker container.
#
# --rm: Remove the container once it has finished running
# -v /$(pwd):/tmp: Mount the current directory to /tmp in the container
# -w //tmp: Set the working directory in the container to /tmp
# ghdl/ghdl:bullseye-mcode: Use the GHDL Docker image based on Debian Bullseye with mcode backend
# bash -c "make sim": Run the 'make sim' command inside the container

echo "Running GHDL simulation in Docker container..."

docker run \
--rm \
-v /$(pwd):/tmp \
-w //tmp \
ghdl/ghdl:bullseye-mcode \
bash -c "make; make clean"


# ghdl/ghdl:6.0.0-dev-gcc-ubuntu-24.04 \
# ghdl/ghdl:bullseye-mcode \