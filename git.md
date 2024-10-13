# GIT

## Install `git-lfs` (Large File Systems) for UE4

- MacOS: `brew install git-lsf`
- Linux/Windows: Download from [git-lfs.github.com](https://git-lfs.github.com)

## Create a new Repo with existing files

```zsh
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

- [cheatsheets](https://github.com/mikeizbicki/ucr-cs100/blob/2015winter/textbook/cheatsheets/git-cheatsheet.md)
- [github/advanced-git](https://github.com/mikeizbicki/ucr-cs100/tree/2015winter/textbook/tools/git/advanced-git)

## push to main

`git push <remoteserver> <localbranch>:<remotebranch>`

`git push origin main`

## Work with worktrees

This enables having simultaneous branches in different directories

## Check the difference

```zsh
git diff --staged` # for staged
git diff # for unstages
```

### Create a `bare` repo

```zsh
cd Repos/Rhypt
git clone --bare git@github.com:test .bare
```

Tell git that the goodies are in a `.git` file

```zsh
echo "gitdir: ./.bare" > .git
```

## `Worktrees` based on [http://www.gitkraken.com](https://www.gitkraken.com/learn/git/git-worktree)

1. Check if there are any `worktrees`: `git worktree list`
2. Now work on `worktrees`

```zsh
git worktree add main
git worktree add rolling`

```

3. Go to the directory where the repo lives, e.g., `cd main`
4. Do your thing.
5. May need to push to upstream, e.g., `git push --set-upstream origin main`

## Check all branches and commits

```zsh
git log --graph --online
```

## Creating a new branch and working with a new branch

a. Create New branch: `git branch <new_branch>`
b. Go into New Branch: `git switch <branch_name>` _old syntax_ `git checkout <new_branch>`
c. Push to `github/gitlab`: `git push --set-upstream origin <new_branch>`

# Creating a rust environment

1. Create Rep on https://github.com
2. Create/Push on local machine

```zsh
git init
git add -A
git commit -m "added new project"
git remote add origin https://github.com/<user>/<repo>.git
git push -u -f origin main
```

# Revert all unstaged changes

1. Revert files: `git reset --hard HEAD`
2. Remove new directories: `git clean -fd`

## Revert a specific file

```zsh
git restore <filename>
```

_old syntax_ `git checkout -- <filename>`

## Stop tracking a file

`git rm --cached <filename>`

## Current state is broken

### What is in the stash

`git stash list`

### Push to the stash stack

`git stash` # saves changes to the top of the stash stack
`git stash save "Message to go along changes"`
`git stash -u` # stash untracked files as well

### Bring back the stash

`git stash pop` # applies and remove from stash list
`git stash apply stash@{n}` # applies only (keeps in the list)
`git restore --source=stash@{n} -- <filepath>` # apply a single file from stash@{n}

## Find commit that introduced a bug

Use `git bisect start` etc.
Check `git help bisect`

## Cleaning (as when after assemblies builds in `unity`)

1. `git clean -xdf` # Cleans all new untracked, files and directories
2. `git reset HEAD --hard` # reverts all changed files

## Using deploy keys (`ssh`)

- Git credentials to `libsecret`

`git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret`

- Add deploy key

```bash 
DEPLOY_KEYS_DIR="${DEPLOY_KEYS_DIR:-../deploy_keys}"
DEPLOY_KEYS="${DEPLOY_KEYS:-id-deploy-voice-cache}"

echo "/usr/bin/keychain --lockwait 0 --clear ${DEPLOY_KEYS_DIR}/${DEPLOY_KEYS}"
[[ ! "${DRY_RUN}" == "true" ]] && /usr/bin/keychain --lockwait 0 --clear "${DEPLOY_KEYS_DIR}/${DEPLOY_KEYS}"
```

## Integration of other repo in your own repo

### Submodule (when using a separate repo, best witht forked repo)

- Adding:

 1. `git submodule add <repo-url> <path>`, e.g.,  
 `git submodule add https://github.com/nvim-lua/kickstart.nvim ./nvim/.config/kickstart`

 2. `git submodule init` and `git submodule udpdate`

- Cloning: `git clone --recurse-submodules <repo-url>`

- Updating: `git submodule update --remote --merge`

### Subtree (simplest)

- Adding as a remote: `git remote add kickstart https://github.com/nvim-lua/kickstart.nvim.git`
and `git fetch kickstart`

- Add substree:
`git subtree add --prefix=nvim/.config/kickstart kickstart master --squash`

- Commit: standard to the original repo

- Pull update of kickstart: `git fetch kickstart` and `git subtree pull --prefix=nvim/.config/kickstart kickstart master --squash` Resolve conflicts
