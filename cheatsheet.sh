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

