# Setting up Git for<img align="left" width="30px" alt="Terminal" src="../images/icons/git.png" style="padding-right:10px;" /> 


## Git Common Commands
Command | Description | Example
------- | ----------- | -------
git init | Initialize a local Git repository | git init
git status | Check the current status of your repository | git status
git add <file> | Add a file to the staging area | git add README.md
git commit -m "message" | Commit the changes with a message | git commit -m "Add README file"
git push <remote> <branch> | Push changes to a remote repository | git push origin master
git pull <remote> <branch> | Pull changes from a remote repository | git pull origin master

## Git Remote Commands:
Command | Description | Example
------- | ----------- | -------
git remote add <remote-name> <url> | Add a remote repository | git remote add origin https://github.com/user/repo.git 
git remote -v | List remote repositories | git remote -v
git fetch <remote-name> | Fetch changes from a remote repository | git fetch origin 

## Branch Related Commands:
Command | Description | Example
------- | ----------- | -------
git branch <branch-name> | Create a new branch | git branch feature/login 
git checkout <branch-name> | Switch to a specific branch | git checkout develop 
git merge <branch-name> | Merge a branch into the current branch | git merge feature/login 
git branch -d <branch-name> | Delete a branch | git branch -d feature/login 
git push <remote> <branch-name> | Push changes to a remote repository | git push origin master

## Advanced/other Git Commands:

Command | Description | Example
------- | ----------- | -------
git log | View commit history | git log
git reflog | View all changes to the repository | git reflog
git rebase | Rebase a branch onto another branch | git rebase master
git diff | View changes between commits | git diff
git stash | Stash changes away temporarily | git stash
git cherry-pick <commit> | Apply a single commit from one branch to another
git tag | Create and manage tags in a repository | git tag v1.0.0
git blame | View who last modified a line in a file | git blame README.md