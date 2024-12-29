# DockerForWindows

For students of 42 Ecole (like HIVE) and people who want to test their projects that use `<unistd.h>` on a Windows machine.

## Step 1: Install Docker Desktop

First, you need to install Docker Desktop. [Download Docker Desktop here](https://www.docker.com/products/docker-desktop).

## Step 2: Clone the Repository

Clone the repository with the following command:

```powerShell
git clone https://github.com/rinatiamaev/DockerForWindows.git DockerForWin
```
### Build the Docker Image
Open a terminal in the folder where the Dockerfile is saved.
Run the following command to build the Docker image:
```powerShell
docker build -t ubuntu-c-clang-env .
```
This will create a Docker image named ubuntu-c-clang-env.

#### Run the Docker Container
To start the container and link your project folder to the /hiveproject directory inside the container, use:
```powerShell
docker run -it --rm -v ${PWD}:/hiveproject ubuntu-c-clang-env
```
-it: Runs the container in interactive teerminal.
--rm: Automatically removes the container after you exit.
-v ${PWD}:/hiveproject: Mounts your current directory (${PWD}) into the /app folder in the container.

##### Test Your C Code
Once inside the container, you can compile and run your C code.
Create or edit a C file (e.g., main.c).
Compile the code using clang, run, debug with gdb, and check memory with valgrind
