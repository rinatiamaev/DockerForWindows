# Use Ubuntu as the base image
FROM ubuntu:latest

# Install necessary tools
RUN apt-get update && apt-get install -y \
    clang \
    make \
    gdb \
    valgrind \
    nano \
    vim \
    manpages-posix \
    manpages-posix-dev

# Set the working directory inside the container
WORKDIR /hiveproject

# Copy the current directory to the container
COPY . /hiveproject

# Set the default command to start a Bash shell
CMD ["/bin/bash"]
