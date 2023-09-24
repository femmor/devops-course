# Workstation Setup - The Basics `<img align="left" width="30px" alt="Terminal" src="../images/icons/computer.png" style="padding-right:10px;" />`

These are the tools I use to get my workstation up and running. For Windows I use Windows Terminal, and for MacOs/Linux I use iTerm2. I also usually install [oh-my-zsh](https://ohmyz.sh/) as my default shell but it is not required for this course. SSH client should be installed by default on all operating systems, if not use openssh. For more information on my SSH setup see the SSH [cheatsheet](../ssh/cheatsheet.md).

Git https://git-scm.com/downloads

<img align="left" alt="Git" width="26px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" style="padding-right:10px;" />

SSH https://www.openssh.com/
<img align="left" alt="Git" width="26px" src="../images/icons/ssh.png" style="padding-right:10px;" />

Terminals <img align="left" width="26px" alt="Terminal" src="../images/icons/terminal.png" style="padding-right:10px;"  />

Code Editor | VSCode
<img align="left" alt="Visual Studio Code" width="26px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" style="padding-right:10px;" />
https://code.visualstudio.com/

- Recommended VSCode Extensions: `Atom One Dark Theme, WSL, Ansible, Python, Terraform, Kubernetes, YAML, JSON`

Windows: [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) | Linux/MacOS: [iTerm2](https://iterm2.com/)

- Additionally, I use: [oh-my-zsh](https://ohmyz.sh/) as my default shell and [Powerline go](https://github.com/justjanne/powerline-go) for my prompt.
- My dotfiles are found here(Advanced Users): https://github.com/devopsjourney1/dotfiles-public

`<br>`
`<br>`

# Linux Emulation<img align="left" width="30px" alt="Terminal" src="../images/icons/ubuntu.png" style="padding-right:10px;" />

Not all of the tools we use will work on Windows. For the best development experience on Windows I use WSL2 + Ubuntu from the Windows Store. If you are on MacOS then all the tools we use will work natively. If you are on Linux then you are good to go.

If you are on Windows, these are your best options

- Option 1: [Have WSL2 enabled](https://learn.microsoft.com/en-us/windows/wsl/install) and [Download Ubuntu from Windows Store](https://apps.microsoft.com/store/detail/ubuntu-20045-lts/9MTTCL66CPXJ)
- Option 2: Setup a Linux Server on a Cloud and do your development from there. You can SSH in an use `vi` and vscode also has a remote option. We will be creating [AWS Lightsail](https://aws.amazon.com/lightsail/) instances in this course so you can do development from one of them.
- Option 3: [VirtualBox](https://www.virtualbox.org/) + [Vagrant](https://www.vagrantup.com/)
  `<br>`
  `<br>`

# Package Management<img align="left" width="30px" alt="Terminal" src="../images/icons/package.png" style="padding-right:10px;" />

I use homebrew for MacOS and Linux AND Windows (On my Ubuntu WSL2 instance)

https://docs.brew.sh/Installation

If you are not going the Windows WSL2 route and want a package manager native to windows, [Chocolately](https://chocolatey.org/) and [Scoop](https://scoop.sh/) are good options.


# Python and Pip<img align="left" width="30px" alt="Terminal" src="../images/icons/python.png" style="padding-right:10px;" />

I use Python in all my setups. The latest versions of Python all come with Pip installed by default. If you are on Windows, you can download Python from the official website.

https://www.python.org/downloads/

Installation via homebrew:
``brew install python``


# AWS CLI v2<img align="left" width="30px" alt="Terminal" src="../images/icons/aws.png" style="padding-right:10px;" />

In this course we will be using AWS CLI v2.  [Here is the official documentation for installation.](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)


# Docker Desktop<img align="left" width="30px" alt="Terminal" src="../images/icons/docker.png" style="padding-right:10px;"/>

[Docker Desktop](https://www.docker.com/products/docker-desktop/) is a great tool for local container development. It is available for Windows, Mac, and Linux.
