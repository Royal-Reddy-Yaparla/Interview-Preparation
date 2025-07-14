When updating a resource in Terraform, if the resource is immutable (cannot be modified in place), Terraform destroys and re-creates it.

However, if this resource is a dependency for other resources, destroying it may not be allowed or could cause downstream failures.

That’s where the lifecycle block helps you manage how Terraform handles changes, especially in critical or interdependent infrastructure.

lifecycle {
  prevent_destroy      = true
  create_before_destroy = true
  ignore_changes        = [tags]
}


1. prevent_destroy = true
Prevents the resource from being destroyed under any circumstance.
Useful for critical resources like production databases or S3 buckets with data.

2. create_before_destroy = true
Ensures the new resource is created before the old one is destroyed.
Essential when dealing with immutable infrastructure like AWS IAM roles, Load Balancers, or DNS records.

3. ignore_changes = [...]
Instructs Terraform to ignore specific changes in the resource (like tags), avoiding unnecessary updates.