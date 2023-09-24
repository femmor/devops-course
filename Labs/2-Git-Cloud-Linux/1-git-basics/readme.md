1. Install Git on your computer:

You can download git by following these instrucitons: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
personally I find installing it via homebrew the easiest

```
brew install git
```

2. Setup your Git profile:

Once you’ve installed Git, you’ll need to configure your username and email address. This information will be associated with any commits you make. To set up your profile, open a terminal window and type the following commands:

git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"

3. Generate an SSH key:

https://docs.github.com/en/authentication/connecting-to-github-with-ssh

An SSH key is a unique string of characters that is used to authenticate your identity when you connect to a remote server. This will allow you to securely clone repositories from remote locations. To generate an SSH key, open a terminal window and type the following command:

ssh-keygen

You will be prompted to enter a passphrase. This is an optional security measure that adds an extra layer of protection to your SSH key.

4. Add your SSH key to GitHub:

Once you’ve generated an SSH key, you’ll need to add it to your GitHub account. This will allow you to securely clone repositories from your GitHub account. To do this, go to the “Settings” page of your GitHub account and click on “SSH and GPG keys”. From here, you can add your newly generated SSH key.

5. Clone a repository:

Now that you’ve set up your Git profile and added your SSH key to GitHub, you’re ready to clone a repository. To do this, open a terminal window and type the following command:

git clone git@github.com:username/reponame.git

This will create a copy of the repository on your local machine. You can then make changes to the code, commit them, and push them back to the remote repository.
