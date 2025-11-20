# set remote (only once)
git remote add origin <url>

# push current branch and set upstream
git push -u origin $(git rev-parse --abbrev-ref HEAD)

# push tags
git push --tags

# force push (use with caution)
git push --force-with-lease origin <branch>

# fetch remote refs without merging
git fetch origin

# peek recent commits (compact)
git log --oneline --graph --decorate -n 20

# show full diff of last commit
git show HEAD

# show patch for several commits
git log -p -n 3

# show changes between working tree and index / last commit
git diff        # unstaged
git diff --staged  # staged vs last commit

# show a specific file as it exists on a remote branch (after git fetch)
git show origin/main:path/to/file.txt

# view file at a local commit
git show <commit>:path/to/file.txt

# list remote branches
git branch -r

# inspect a remote ref SHA
git ls-remote origin