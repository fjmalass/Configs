# AWS and EC2 Instances Images

## Tutorials

- [EC2Images](https://docs.aws.amazon.com/imagebuilder/latest/userguide/what-is-image-builder.html)
- [Creation with Sysprep](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-create-win-sysprep.html)

## Images

- GPU and Nvidia [WindowsServer16](https://aws.amazon.com/marketplace/pp/prodview-ymy34danwtiro?sr=0-1&ref_=beagle&applicationId=AWSMPContessa
)

## `AWS CLI` 

- Download - [Install or update](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html): `msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi`

### Commands

- Show configuration: `aws sts get-caller-identity` []
  - Located in `~/.aws/config` (Linux) or `C:\Users\<User>\.aws\config`
- List all s3 buckets `aws s3 ls`

## S3 Buckets and `AWS CLI`

- List bucket: `aws s3api list-objects --bucket og-daniel-1`
- Download from bucket:
`aws s3api get-object --bucket og-daniel-1 --key daniel-build/20241210_Daniel_Zoom.zip 20241210_Daniel_Zoom.zip`

## using `pm2`

- Starting: `pm2 start npm --name=monolith -- start`
- ReStarting: `pm2 restart monolith`
- ReStarting instance via http: ``

## Secret Manager

- [AWS Secret Managers](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)
- [SSH](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-eic.html)
- [Certifcates](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html)
- [Keys](https://docs.aws.amazon.com/kms/latest/developerguide/overview.html)

## etcd

- [go](https://pkg.go.dev/go.etcd.io/etcd/client/v3)

## Virtual cables:

- [alternative](https://vac.muzychenko.net/en/purchase.htm)


