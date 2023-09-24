
# Git Basics

Everything we go over here is the basics of what you should know if you plan to work in the world of Software Engineering. We will be using Git throughout the course, this lab is to show off the basics of what I would expect a DevOps Engineer to know.


### 1. Create a Repository on GitHub:

Now that you’ve set up your Git profile and added your SSH key to GitHub, you’re ready to clone a repository. To do this, open a terminal window and type the following command:

git clone git@github.com:devopsjourney1/devops-course.git

This will create a copy of the repository on your local machine.

### 2. Cloning Repositories:

Once you have setup your Git repo you’re ready to clone it to your machine. To do this, open a terminal window and type the following command:

```
git clone git@github.com:YOUR_USERNAME/myrepo.git
```

You can also clone the course repo
```
git clone git@github.com:devopsjourney1/devops-course.git
```

### 3. Make changes and push them back to GitHub:

Go into the directory
```
cd myrepo
```
Create a file, like a `readme.md`

Add the file to the repo.

```
git add readme/md
```

Check the status of git. This will show you what files have been changed and what files will be added to the repo on commit.

```
git status
```

Commit the changes to the repo. This will create a new commit with the changes you made. You can add a message to the commit with the `-m` flag.

```
git commit -m "My First Commit!"
```

Push the changes to GitHub. This will push the changes you made to the repo on GitHub.

```
git push
```

### 4. Feature Branching and PR Requests

Use the `git checkout` command to create a new branch and switch to it.

```
git checkout -b mybranch
```

Make some changes to the readme.md file, and add a file named helloworld.sh


### 5. Switching branches/pulling changes

See a list of branches

```
git branch
```

Checkout the main branch

```
git checkout main
```

Make a change directly on github.com. Modify one of the files or add a new file. Now check the status of your local repo. 

```
git status
```

Notice that your local repo is behind the remote repo. You need to pull the changes from the remote repo to your local repo. This isn't something that happens often when you are working alone, but it is something that happens often when you are working with a team as a other Engineers are constantly commiting and pushing changes to the repo.

In order to get the new changes run the command

```
git pull
```

Now you should see that your local repo is up to date with the remote repo.

```
git status
```

# Summary

That's the basics of git! If you understand this you are well on your way to becoming a DevOps Engineer. We will be using git throughout this course, so even if it doesn't make 100% sense now, it will by the end of the course. We will also be exploring more of git/github in future labs as well.