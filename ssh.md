# SSH

## Github (See `git.md`)

## SSH for Operative Games

Make sure that the `.pem` file is `600` mode.

<!-- `ssh -i ~/.ssh/og_deploy_keys/fileserver_shared_keys.pem ubuntu@ec2-18-191-228-100.us-east-2.compute.amazonaws.com` -->
`ssh -i ~/.ssh/og_deploy_keys/fileserver_shared_keys.pem ubuntu@fileserver.operativegames.ai`
`ssh -i ~/.ssh/og_deploy_keys/fileserver_shared_keys.pem ubuntu@fileserver.operativegames.ai "ls -l <directory>`
