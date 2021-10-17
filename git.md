# GIT

# Install `git-lfs` (Large File Systems) for UE4
* MacOS:  `brew install git-lsf`
* Linux/Windows: Download from [git-lfs.github.com](https://git-lfs.github.com)

# Create a new Repo with existing files
```
git init
git addd README.md
git commit -m "First commit"
git branch -M main  # aka --move --force
git remote add origin https://github.com/<username>/<repo>.git
git push -u origin main

```


# push to master 
`git push <remoteserver> <localbranch>:<remotebranch>`

`git push origin master`


# Work with worktrees 
This enables having simultaneous branches in different directories

## Create a `bare` repo

`cd Repos/Rhypt`
`git clone --bare  git@github.com:test .bare`
Tell git that the goodies are in a .git file 
`echo "gitdir: ./.bare" > .git`
Now work on worktrees
`git worktree add master`
`git worktree add rolling`

Go to the directory where the repo lives `cd master`
Do your thing.
May need to push to upstream 
`git push --set-upstream origin test`
