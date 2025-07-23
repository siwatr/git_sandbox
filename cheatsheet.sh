#region MARK: Hard Reset
# Hard reset HEAD to branch
git reset --hard origin/main

# Hard reset to specific commit
git reset --hard <commit-hash>

# NOTE: Normally git reset will simply unstage the file if the file name is given
# To unstage all file in HEAD:
git reset HEAD --

#region MARK: Rebase
# Assume we have three branches already created: main, b1, b2
git rebase --onto main b1
git rebase --onto main b1 b2

# To abort the rebase operation - i.e., in case of conflict
git rebase --abort

#region MARK: Branches

# Remove local branch
git branch new_branch # make new one
git branch -d new_branch

# Update list of tracking remote branch on local machine
git branch -a
git remote update origin --prune
git branch -a

# Branch on branch
git checkout -b branch_1 main
git checkout -b branch_1_1 branch_1
# do some work
git commit -am "work on branch_1_1"
git checkout branch_1
git merge --no-ff branch_1_1 # Merge to the branch

#region MARK: Alias
# Here are some useful aliases to be added to the config
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.graph "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
git config --global alias.longgraph "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
