# SSH

## Github (See `git.md`)

1. Make sure you have the ssh-agent running, `eval "$(ssh-agent -s)"` 
2. Add the key to the agent `ssh-add ~/.ssh/<deploy_key>`
3. Altenatively you can add the `GIT_SSH_COMMAND` like 
`GIT_SSH_COMMAND="ssh -i ~/.ssh/id_github_fmalassenet_grumpy" git pull`
4. We can use the shortname, `Host` entry, in the `~/.ssh/config` file to make
it easier to use the key. here `github-fjmalass` is the shortname for the 
github account.

``` bash
Host github-fjmalass
	HostName github.com
	User git
	IdentityFile ~/.ssh/id_github_fjmalass
	IdentitiesOnly yes
```


## SSH for Operative Games

Make sure that the `.pem` file is `600` mode.

<!-- `ssh -i ~/.ssh/og_deploy_keys/fileserver_shared_keys.pem ubuntu@ec2-18-191-228-100.us-east-2.compute.amazonaws.com` -->
`ssh -i ~/.ssh/og_deploy_keys/fileserver_shared_keys.pem ubuntu@fileserver.operativegames.ai`
`ssh -i ~/.ssh/og_deploy_keys/fileserver_shared_keys.pem ubuntu@fileserver.operativegames.ai "ls -l <directory>`


### For windows

- Make it 600 level with a `Terminal (administrator mode)` with `Archer` as user
- `icacls <ssh-key> /grant <user>:(F)`
- `icacls <ssh-key> /grant SYSTEM:(F)`

or more specifically

``` bash
icacls "D:\DeployKeys\id_deploy_omnichannel-unreal-launcher-python" /inheritance:r
icacls "D:\DeployKeys\id_deploy_omnichannel-unreal-launcher-python" /grant Archer:(F)
icacls "D:\DeployKeys\id_deploy_omnichannel-unreal-launcher-python" /grant SYSTEM:(F)




