# AWS SFTP SERVER

## Overview

This module will be responsible for creating the AWS SFTP service.
AWS SFTP service is managed service which is completely managed by AWS. We can aslo create sftp server on EC2 but the complete infrastructure will be manged by us like loadbalancing and autoscalling, by this cost will also increase 



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules
| Name | Type |
|------|------|
| [module.sftp](https://github.com/clouddrove/terraform-aws-sftp) | module |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project name | `string` | demo | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `string` | dev | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sftp_id"></a> [sftp\_id](#output\_sftp\_id) | SFTP id |
| <a name="output_sftp_transfer_server_endpoint"></a> [sftp\_transfer\_server\_endpoint](#output\_sftp\_transfer\_server\_endpoint) | SFTP Server endpoint |


## Deployment

```
git clone https://github.com/bharatnainani/sftp-server.git
cd sftp-server
terraform init
terraform plan
terraform apply
```

# Destroy

```
terraform destroy
```