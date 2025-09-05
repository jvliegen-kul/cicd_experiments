#!/bin/bash

docker run \
--rm \
-v /$(pwd):/tmp \
-w //tmp \
ghdl/ghdl:bullseye-mcode \
bash -c "make sim; make clean"

# --rm: Remove the container once it has finished running
# -v /$(pwd):/src: Mount the current directory to /src in the container
# -w //src: Set the working directory in the container to /src
# ghdl/ghdl:bullseye-mcode: Use the GHDL Docker image based on Debian Bullseye with mcode backend
# bash -c "make sim": Run the 'make sim' command inside the container