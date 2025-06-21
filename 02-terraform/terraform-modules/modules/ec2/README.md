# EC2 Terraform Module

This Terraform module provisions an EC2 instance with customizable configurations.

---

## Features

- Supports default Amazon Machine Image (RHEL).
- Allows validation for instance types (`t2.micro`, `t2.small`, `t2.medium`).
- Supports custom Security Groups, Subnets, Tags, and Environment naming.
- Outputs useful instance information after provisioning.

---

## Input Variables

| Name             | Description                                                   | Type        | Default    | Required |
|------------------|---------------------------------------------------------------|-------------|------------|----------|
| `ami_id`         | The AMI ID to use for the instance.                          | `string`    | Default RHEL AMI | No |
| `instance_type`  | The EC2 instance type. Only `t2.micro`, `t2.small`, or `t2.medium` are allowed. | `string` | `t2.micro` | No |
| `security_group_id` | List of Security Group IDs to associate with the instance. | `list(string)` | `n/a` | Yes |
| `subnet_id`      | Subnet ID where the instance will be launched.               | `string`    | `us-east-1a subnet` | No |
| `component`      | Component name used for naming the instance.                 | `string`    | `n/a` | Yes |
| `environment`    | Environment name used for naming the instance.               | `string`    | `n/a` | Yes |
| `common-tags`    | Common tags to apply to all resources.                       | `map(string)` | `{}` | No |
| `ec2-tags`       | Additional tags specific to the EC2 instance.                | `map(string)` | `{}` | No |

---

## Outputs

| Name         | Description |
|--------------|-------------|
| `instance_id` | The ID of the EC2 instance. |
| `public_ip`   | The public IP address of the instance. |
| `private_ip`  | The private IP address of the instance. |

---

## Usage Example

```hcl
module "ec2_instance" {
  source            = "./modules/ec2"
  ami_id            = "ami-0abcdef1234567890"
  instance_type     = "t2.small"
  security_group_id = ["sg-0123456789abcdef0"]
  subnet_id         = "subnet-0123456789abcdef0"
  component         = "web-server"
  environment       = "dev"
  common-tags = {
    Project = "MyProject"
  }
  ec2-tags = {
    Role = "ApplicationServer"
  }
}
