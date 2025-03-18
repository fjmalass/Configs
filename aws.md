# AWS and EC2 Instances Images

## Tutorials

- [EC2Images](https://docs.aws.amazon.com/imagebuilder/latest/userguide/what-is-image-builder.html)
- [Creation with Sysprep](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-create-win-sysprep.html)

## Images

- GPU and Nvidia [WindowsServer16](https://aws.amazon.com/marketplace/pp/prodview-ymy34danwtiro?sr=0-1&ref_=beagle&applicationId=AWSMPContessa
)

## `AWS CLI`

- Download `msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi`

## S3 Buckets and `AWS CLI`

- List bucket: `aws s3api list-objects --bucket og-daniel-1`
- Download from bucket: `aws s3api get-object --bucket og-daniel-1 --key daniel-build/20241210_Daniel_Zoom.zip 20241210_Daniel_Zoom.zip`

## using `pm2`

- Starting: `pm2 start npm --name=monolith -- start`
- ReStarting: `pm2 restart monolith`

