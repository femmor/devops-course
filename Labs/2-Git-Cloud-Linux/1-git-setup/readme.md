

# Installation/Setup

### 1. Installation
Most likely Git is already installed on your workstation. If it's not you can download/install git by following these instrucitons: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

### 2. Profile Setup

Once you’ve installed Git, you’ll need to configure your username and email address. This information will be associated with any commits you make. To set up your profile, open a terminal window and type the following commands:

git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"

### 3. Generate an SSH key:

It is strongly recommended to use Git using SSH keys.  In this course I will use SSH keys to authenticate to my Github account. Full instructions are available here: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

To generate an SSH key, open a terminal window and type the following command:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com
```

Optional - you can generate a ed25519 key instead. keep in mind this isn't supported by all systems, including AWS Lightsail that we will be using later.

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### 4. Add your SSH key to GitHub:

Once you’ve generated an SSH key, you’ll need to add it to your GitHub account. This will allow you to securely clone repositories from your GitHub account. To do this, go to the “Settings” page of your GitHub account and click on “SSH and GPG keys”. From here, you can add your newly generated SSH key.

### 5. Test Connetivity:

```
ssh -T git@github.com
```