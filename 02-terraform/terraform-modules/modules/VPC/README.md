

# Terraform VPC Module

This module helps you create a complete VPC setup in AWS using Terraform. It includes everything you usually need for a standard VPC: public, private, and database subnets, internet access, NAT gateways, route tables, and even optional VPC peering if required.

---

## What This Module Does

Here’s a quick summary of what gets created:

1. **VPC** — with a configurable CIDR block.
2. **Subnets** — Public, Private, and Database subnets across multiple Availability Zones.
3. **Internet Gateway** — for public subnet internet access.
4. **Route Tables** — configured separately for public, private, and database subnets.
5. **Elastic IP & NAT Gateway** — so private subnets can reach the internet securely.
6. **VPC Peering (optional)** — if enabled, creates a peering connection (currently with default VPC).

---

## Input Variables

You can customize the module using the following variables:

| Variable               | Type      | Description                              | Required | Default                            |
| ---------------------- | --------- | ---------------------------------------- | -------- | ---------------------------------- |
| `project`              | string    | Your project name (used for tagging)     | ✅ Yes    | N/A                                |
| `environment`          | string    | Environment name (e.g. dev, prod)        | ✅ Yes    | N/A                                |
| `vpc_cidr_block`       | string    | CIDR block for your VPC                  | ❌ No     | `10.0.0.0/16`                      |
| `vpc_tags`             | map(any)  | Additional tags for the VPC              | ❌ No     | `{}`                               |
| `public_cidr_block`    | list(any) | List of CIDR blocks for public subnets   | ❌ No     | `["10.0.1.0/24", "10.0.2.0/24"]`   |
| `private_cidr_block`   | list(any) | List of CIDR blocks for private subnets  | ❌ No     | `["10.0.11.0/24", "10.0.12.0/24"]` |
| `database_cidr_block`  | list(any) | List of CIDR blocks for database subnets | ❌ No     | `["10.0.21.0/24", "10.0.22.0/24"]` |
| `public_subnet_tags`   | map(any)  | Tags for public subnets                  | ❌ No     | `{}`                               |
| `private_subnet_tags`  | map(any)  | Tags for private subnets                 | ❌ No     | `{}`                               |
| `database_subnet_tags` | map(any)  | Tags for database subnets                | ❌ No     | `{}`                               |
| `igt_tags`             | map(any)  | Tags for Internet Gateway                | ❌ No     | `{}`                               |
| `elastic_ip_tags`      | map(any)  | Tags for Elastic IP                      | ❌ No     | `{}`                               |
| `nat_gateway_tags`     | map(any)  | Tags for NAT Gateway                     | ❌ No     | `{}`                               |
| `public_rt_tags`       | map(any)  | Tags for Public Route Table              | ❌ No     | `{}`                               |
| `private_rt_tags`      | map(any)  | Tags for Private Route Table             | ❌ No     | `{}`                               |
| `database_rt_tags`     | map(any)  | Tags for Database Route Table            | ❌ No     | `{}`                               |
| `peering_tags`         | map(any)  | Tags for Peering connection              | ❌ No     | `{}`                               |
| `is_peering_required`  | bool      | Set to `true` to enable VPC peering      | ❌ No     | `false`                            |

---

## Outputs

| Output   | Description               |
| -------- | ------------------------- |
| `vpc_ip` | The ID of the created VPC |

---

## Quick Usage Example

```hcl
module "vpc" {
  source = "./modules/vpc"

  project     = "my-app"
  environment = "dev"

  vpc_tags = {
    Name = "my-app-vpc"
  }

  is_peering_required = true
}
```

---

## Notes

* By default, peering is set up with AWS default VPC. You can modify it in the future to support custom peering scenarios.
* Tags are fully customizable, making it easier to track and organize your resources.
* This module works well as a base for other modules like EKS, RDS, etc.

---