# Linux Cheat Sheet<img align="left" width="30px" alt="Terminal" src="../images/icons/linux.png" style="padding-right:10px;" /> 

| Command | Description | Example |
| --- | --- | --- |
| **Navigation** | | | 
| `pwd` | Print Working Directory | `pwd` |
| `cd` | Change Directory | `cd /home/user/` | 
| `ls` | List Files and Directories | `ls -l`, `ls -a` |
| **Superuser** | | |
| `su` | Switch User | `su - user1` |
| `sudo` | Execute Command as Root | `sudo command` |
| **Directories** | | |
| `mkdir` | Make a new Directory | `mkdir temp` |
| `rmdir` | Remove a Directory | `rmdir temp` |
| **Files** | | |
| `cat` | View File | `cat file.txt` |
| `touch` | Create a File | `touch new_file.txt` |
| `mv` | Move/Rename a File | `mv file1.txt file2.txt` |
| `cp` | Copy a File | `cp file1.txt file2.txt` |
| `rm` | Remove a File | `rm file.txt` |
| `chmod` | Change File/Directory Permissions | `chmod 755 file.txt` |
| `chown` | Change File/Directory Owner | `chown user:group file.txt` |
| `chgrp` | Change File/Directory Group | `chgrp group file.txt` |
| **Users/Groups** | | |
| `useradd` | Create a New User | `useradd user1` |
| `userdel` | Delete a User | `userdel user1` |
| `usermod` | Modify a User | `usermod -a -G group1 user1` |
| `groupadd` | Create a New Group | `groupadd group1` |
| `groupdel` | Delete a Group | `groupdel group1` |
| `groupmod` | Modify a Group | `groupmod -n oldgroupname newgroupname` |
| **Search** | | |
| `grep` | Search a File | `grep keyword file.txt` |
| `find` | Find a File | `find / -name file.txt` |
| **Processes** | | |
| `ps` | List Running Processes | `ps -ef` |
| `kill` | Kill a Process | `kill -9 pid` |
| **System Information** | | |
| `uname` | Print System Information | `uname -a` |
| `df` | Check Disk Usage | `df -h` |
| `free` | Check Memory Usage | `free -h` |
| `top` | Check Running Processes | `top -c` |
| `htop` | Interactive Process Viewer | `htop` |
| **Text Editor** | | |
| `vi` | Text editor | `vi filename.txt` |
| `vim` | Text editor | `vim filename.txt` |
| `nano` | Text editor | `nano filename.txt` |
| `emacs` | Text editor | `emacs filename.txt` |
| **Text Processing** | | |
| `cut` | Cut a Column from File | `cut -d: -f1 file.txt` |
| `sort` | Sort a File | `sort file.txt` |
| `uniq` | Remove Duplicates | `uniq file.txt` |
| `sed` | Stream Editor | `sed 's/old/new/g' file.txt` |
| `awk` | Process Text | `awk '{print $1}' file.txt` |
| **Archives** | | |
| `tar` | Create Archive | `tar cvf archive.tar file1.txt` |
| `gzip` | Compress File | `gzip file.txt` |
| `gunzip` | Decompress File | `gunzip file.txt.gz` |
| **Network** | | |
| `ping` | Ping a Server | `ping 8.8.8.8` |
| `curl` | Transfer Data | `curl -o file.txt www.example.com` |
| `wget` | Download File | `wget www.example.com/file.txt` |
| `nc` | Network Connection | `nc -v example.com 80` |
| `netstat` | Check Network Connections | `netstat -nap` |
| `lsof` | List Open Files | `lsof -i` |
| **Other** | | |
| `man` | View Manual Page | `man ls` |
| `echo` | Echo Text to Screen | `echo "Hello World"` |
| `history` | Check Command History | `history` |
| `alias` | Create an Alias | `alias ll='ls -l'` |
| `which` | Find Executables | `which ls` |
| `env` | View Environment Variables | `env` |
| `export` | Set Environment Variables | `export VAR="value"` |
| `logout` | Log out of Session | `logout` |
| `shutdown` | Shutdown System | `shutdown -h now` |
| `reboot` | Reboot System | `reboot` |
| **Packages (Debian)** | | |
| `apt-get update` | Install/Uninstall Packages | `apt-get update` |
| `apt-get install` | Install| `apt install python3` |\
| `apt-get remove` | Install| `apt remove python3` |
| `apt-get list` | List Available Packages | `apt list` |
| **Packages (Red Hat)** | | |
| `yum update` | Install/Uninstall Packages | `yum update` |
| `yum install` | Install | `yum install package` |
| `yum remove` | Install | `yum remove package` |
| `rpm` | Query Installed Packages | `rpm -qa` |
| `yum list` | List Available Packages | `yum list available` |

# File Permissions
- The numbers 0-7 in Linux file permissions each represent a combination of permissions. 
- The bits in a file permission refer to the read (r or 4), write (w or 2), and execute (x or 1) permissions.
- The bits are added to give the permission. e.g. Read (4) + Exectute (1) would be 6 
- The bits are represented as a three-digit number, with each digit corresponding to the permissions of the owner, group, and others. 

| Permission | Bit |
| --- | --- |
| Read | 4 |
| Write | 2 |
| Execute | 1 |

| Permissions | Description |
| --- | --- |
| `0` | No permissions | 
| `1` | Execute permission | 
| `2` | Write permission | 
| `3` | Write and Execute permission | 
| `4` | Read permission | 
| `5` | Read and Execute permission | 
| `6` | Read and Write permission | 
| `7` | Read, Write and Execute permission |

#### Examples/Common Patterns
| Permissions | Human Readable | Description |
| --- | --- | --- |
| `755` | rwx r-x r-x | Read, Write and Execute permissions for the owner, and Read and Execute permissions for the group and others. |
| `664` | rw- rw- r-- | Read and Write permissions for the owner, and Read permissions for the group and others. |
| `775` | rwx rwx r-x | Read, Write and Execute permissions for the owner, and Read and Execute permissions for the group and others. |
| `644` | rw- r-- r-- | Read and Write permissions for the owner, and Read permissions for the group and others. |
| `700` | rwx --- --- | Read, Write and Execute permissions for the owner, and no permissions for the group and others. |
| `600` | rw- --- --- | Read and Write permissions for the owner, and no permissions for the group and others. |