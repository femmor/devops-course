## Linux Basics - Lab Steps

### Step 1: Accessing Linux

- Either SSH into the AWS instance or access your Ubuntu VM.

### Step 2: Basic Navigation and File Operations

- `sudo`: Run a command as the superuser.
- `pwd`: Print the current working directory.
- `ls`: List files and directories.
- `ls -l`: List files and directories in long format. (Inlcudes permissions, ownership, size, and more.)
- `mkdir`: Create directories.
- `cd`: Change directories.
- `touch`: Create empty files.
- `cp`: Copy files and directories.
- `mv`: Move or rename files and directories.
- `rm`: Remove files and directories
- `man`: Display the manual page for a command.

### Step 3: File Viewing and Editing

- `cat`: Concatenate and display file content.
- `less` or `more`: View file content page by page.
- `nano` or `vim`: Text editors for file editing.
- `head` and `tail`: View the beginning or end of a file.


### Step 4: File Permissions

- `chmod`: Change file permissions.
- `chown`: Change file ownership.

### Step 5: Processes and System Monitoring

- `ps`: List running processes.
- `kill`: Terminate processes.
- `top` or `htop`: Interactive process viewer.
- `ctrl+c`: Terminate a running command.

### Step 6: Package Management (APT)

- `apt update`: Update package lists.
- `apt upgrade`: Upgrade installed packages.
- `apt install`: Install software packages.
- `apt remove`: Remove software packages.


### Step 7: Disk Space

- `df` and `du`: Display disk space usage.

Let's have a look at all the mounts on the server

```
df
```

Let's have a look at how much diskspace is being used. Add the `-h` flag to make it human readable.

```
du -h
```
