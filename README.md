chatanoo-infra
==============

CloudFormation templates to build Chatanoo in AWS


How-to use it
-------------

Install AWS CLI, by following this documentation http://docs.aws.amazon.com/cli/latest/userguide/installing.html

Create a new EC2 Key Pair

```
aws ec2 create-key-pair --key-name my-keypair --query 'KeyMaterial' --output text > ~/.ssh/my-keypair.pem
``` 

Create a S3 bucket to store the templates files

```
$ aws s3 mb s3://chatanoo-cloudformation --region eu-west-1
```

Upload templates to your new S3 bucket

```
$ aws s3 cp cloudformation/  s3://chatanoo-cloudformation/ --recursive --exclude "*" --include "*.cfn.json"
```

You can customize your CloudFormation paramaters by editing your `launch-params.json`

```
$ cp cloudformation/launch-params.json.sample cloudformation/launch-params.json
$ vi cloudformation/launch-params.json
```

Create your stack

```
$ cloudformation/create.sh my-stack-name
```