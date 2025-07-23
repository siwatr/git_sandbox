# Rebase
# Assume we have three branches already created: main, b1, b2
git rebase --onto main b1
git rebase --onto main b1 b2

# To abort the rebase operation - i.e., in case of conflict
git rebase --abort

# Remove local branch
git branch new_branch # make new one
git branch -d new_branch

# Update list of tracking remote branch on local machine
git branch -a
git remote update origin --prune
git branch -a
