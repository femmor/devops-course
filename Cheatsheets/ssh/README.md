

| Command | Description | Example |
| `ssh` | Secure Shell | `ssh user@example.com` |
| `scp` | Secure Copy | `scp file.txt user@example.com:/home/user` |
| `sftp` | Secure File Transfer Protocol | `sftp user@example.com` |
| `ssh-keygen` | Generate an SSH Key | `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` |
| `ssh-copy-id` | Copy an SSH Key to a Remote Host | `ssh-copy-id -i ~/.ssh/id_rsa.pub user@example.com` |
| `ssh-add` | Add an SSH Key to the SSH Agent | `ssh-add ~/.ssh/id_rsa` |


| Linux| Windows |
| -------- | ----------- |
| **Directory** | | |
|~/.ssh/|C:\Users\username\.ssh\|

| Filename | Description |
| -------- | ----------- |
| id_rsa | Private key for SSH (Default). Should have permission 600.. |
| id_rsa.pub | Public key for SSH (Default) |
| known_hosts | List of hosts and their keys |
| config | Configurations for SSH connections |
| authorized_keys | List of public keys authorized to access the system |

*** Note: The default location for the SSH key is `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`. If you want to use a different key, you can specify it with the `-i` option. ***

```
ssh -i ~/.ssh/mykey.pem user@host
```

### Permissions for SSH Keys
SSH keys should have the following permissions:
```
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
```

# Example: SSH Config File
`~./ssh/config`
```
Host github.com
 HostName github.com
 IdentityFile ~/.ssh/id_github_dontshare

Host *
  User ubuntu
  StrictHostKeyChecking no

Host myserver
  HostName 54.188.189.66
  User ubuntu
  IdentityFile ~/.ssh/myserver.pem
  StrictHostKeyChecking no
```
