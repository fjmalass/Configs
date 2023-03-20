# GIT

## Install `git-lfs` (Large File Systems) for UE4

- MacOS: `brew install git-lsf`
- Linux/Windows: Download from [git-lfs.github.com](https://git-lfs.github.com)

## Create a new Repo with existing files

```
git init
git addd README.md
git commit -m "First commit"
git branch -M main  # aka --move --force
# add a remote with name `origin` (should probably use upstream)
git remote add origin https://github.com/<username>/<repo>.git
git push -u origin main
```

## Tutorial
* [cheatsheets](https://github.com/mikeizbicki/ucr-cs100/blob/2015winter/textbook/cheatsheets/git-cheatsheet.md)
* [github/advanced-git](https://github.com/mikeizbicki/ucr-cs100/tree/2015winter/textbook/tools/git/advanced-git)

## push to main

`git push <remoteserver> <localbranch>:<remotebranch>`

`git push origin main`

## Work with worktrees

This enables having simultaneous branches in different directories

### Create a `bare` repo

`cd Repos/Rhypt`
`git clone --bare git@github.com:test .bare`
Tell git that the goodies are in a .git file
`echo "gitdir: ./.bare" > .git`

## `Worktrees` based on [http://www.gitkraken.com](https://www.gitkraken.com/learn/git/git-worktree)

1. Check if there are any `worktrees`: `git worktree list`
2. Now work on `worktrees`
   `git worktree add main`
   `git worktree add rolling`

3. Go to the directory where the repo lives, e.g., `cd main`
4. Do your thing.
5. May need to push to upstream, e.g., `git push --set-upstream origin main`

## creating a new branch and working with a new branch

a. Create New branch: `git branch <new_branch>`
b. Go into New Branch: `git checkout <new_branch>`
c. Push to `github/gitlab`: `git push --set-upstream origin <new_branch>`
