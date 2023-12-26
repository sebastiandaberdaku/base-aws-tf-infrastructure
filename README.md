# base-aws-tf-infrastructure
Base Terraform project used to bootstrap a remote Terraform state on AWS.
This project uses the ["aws-terraform-remote-state"](https://github.com/sebastiandaberdaku/terraform-modules/tree/main/aws-terraform-remote-state) module.
The following AWS resources are created:
1. The Terraform remote state S3 storage bucket;
2. The Terraform remote state DynamoDB Table lock;
3. The Terraform Admin IAM Role.

The `apply_tf_templates.sh` bash script can be used to apply the templates. 
You need to have the **development**, **staging** and **production** AWS profiles configured in your ~/.aws/credentials 
file. These profiles can refer to the same or different AWS accounts.
