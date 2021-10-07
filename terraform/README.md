# Terraform modules

This directory contains Terraform modules and a library of reusable modules
under `library`. Each module deploys a complete service. Although services will
be interconnected and there will be dependencies between services, the goal is
to keep the modules whole so that applying the module deploys the entire
service.

## A word on environments

Each module has a Terraform variables files (`.tfvars`) and a workspace for each
environment that service is deployed to. This puts the emphasis on keeping the
services the same across different environments with little changes, mainly for
scale (eg. 2 instances instead of 5).

## Common workflow

In this example, deploying to the dev environment. A convention is used for the
default workflow (have it be prod or dev or just not used).

```
terraform init
terraform workspace new dev
# Or if the workspace is already present:
terraform workspace select dev
terraform plan -var-file=dev.tfvars -out=tfplan
# Review the changes to be applied.
terraform apply tfplan
```

## Some more information here (like different providers, other conventions)
