usually in organization level maintain different aws accounts for different environments 
- dev,stage,prod,test,uat

one account -> one provider -> store credentials and config info in --> user/.aws

cat credentials
[default]
aws_access_key_id = <access_key>
aws_secret_access_key = <secret_key>

cat config
[default]
region = us-east-1
output = json




by default there is one profile 
if want multiple accounts 

the details we provided , in "aws configure" will be stored in default 

## create a profile for environment

```aws configure --profile dev```

provide credentials , those will store like below 

```
[default]
aws_access_key_id = <access_key>
aws_secret_access_key = <secret_key>

[dev]
aws_access_key_id = <access_key>
aws_secret_access_key = <secret_key>
```

and also update 
[default]
region = us-east-1
output = json

[dev]
region = ap-east-1
output = json

use multiple profile in single provide file
```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
  }
}

provider "aws" {
  alias  = "dev"
  region = "us-west-1"
}

provider "aws" {
  alias  = "prod"
  region = "us-west-2"
}
```

## how to specify env
```

resource "aws_instance" "my_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "HelloWorld"
  }
   provider      = aws.dev
}

```
note: if not specified , will be created in default 

```
terraform init
terraform plan
terraform apply

```