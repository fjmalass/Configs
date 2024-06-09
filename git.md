# GIT

## Install `git-lfs` (Large File Systems) for UE4

- MacOS: `brew install git-lsf`
- Linux/Windows: Download from [git-lfs.github.com](https://git-lfs.github.com)

## Create a new Repo with existing files

```
git init
git add README.md
git commit -m "First commit"
git branch -M main  # aka --move --force
# add a remote with name `origin` (should probably use upstream)
# create the `origin` repo that link to the github repo (could have used github)
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

## Check the difference

`git diff --staged` # for staged
`git diff` # for unstages

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


## Check all branches and commits

`git log --graph --online`

## Creating a new branch and working with a new branch

a. Create New branch: `git branch <new_branch>`
b. Go into New Branch: `git switch <branch_name>` *old syntax* `git checkout <new_branch>`
c. Push to `github/gitlab`: `git push --set-upstream origin <new_branch>`


# Creating a rust environment
1. Create Rep on https://github.com
2. Create/Push on local machine
```
git init
git add -A
git commit -m "added new project"
git remote add origin https://github.com/<user>/<repo>.git
git push -u -f origin main
```

# Revert all unstaged changes

1. Revert files:  `git reset --hard HEAD`
2. Remove new directories: `git clean -fd`

## Revert a specific file

`git restore <filename>` *old syntax* `git checkout -- <filename>`


## Stop tracking a file

`git rm --cached <filename>`

## Current state is broken

### What is in the stash

`git stash list`

### Push to the stash stack
`git stash` # saves changes to the top of the stash stack
`git stash save "Message to go along changes"`
`git statsh -u` # stash untracked files as well

### Bring back the stash

`git stash pop`
`git stash apply stash@{stash_index} #


## Find commit that introduced a bug

Use `git bisect start` etc.
Check `git help bisect`

