# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package lists and install necessary tools
RUN apt-get update && apt-get install -y \
    clang \              # Install Clang compiler
    make \               # Install Make build system
    gdb \                # Install GNU Debugger
    valgrind \           # Install memory analysis tool
    nano \               # Install text editor if use nano
    vim \                # Install text editor if prefer vim
    manpages-posix \     # Install POSIX documentation
    manpages-posix-dev   # Install POSIX developer documentation

# Set the working directory inside the container
WORKDIR /hiveproject

# Copy the current directory to the container
COPY . /hiveproject

# Set the default command to start a Bash shell
CMD ["/bin/bash"]
