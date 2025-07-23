# Remove local branch
git branch new_branch # make new one
git branch -d new_branch

# Update list of tracking remote branch on local machine
git branch -a
git remote update origin --prune
git branch -a
