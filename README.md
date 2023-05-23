# provisioning-aws-eks-cluster-with-terraform

This Terraform configuration sets up an AWS EKS (Elastic Kubernetes Service) cluster with associated resources.

## Prerequisites

Before you begin, ensure you have the following:

- AWS credentials with appropriate permissions to create resources.
- Terraform installed on your machine.

## Configuration

The Terraform configuration consists of the following files:

1. `dev.tfvar`: Variables file containing AWS environment settings.
2. `eks.tf`: Sets up the AWS EKS cluster using the `terraform-aws-modules/eks` module.
3. `providers.tf`: Configures the AWS and Kubernetes providers.
4. `variables.tf`: Declares the input variables used in the configuration.
5. `vpc.tf`: Sets up the VPC (Virtual Private Cloud) using the `terraform-aws-modules/vpc` module.

## Usage

Follow the steps below to use this Terraform configuration:

1. Clone this repository.
2. Modify the variables in `dev.tfvar` to match your AWS environment.
3. Initialize Terraform by running the command: `terraform init`.
4. Preview the changes Terraform will make by running the command: `terraform plan -var-file=dev.tfvar`.
5. If the plan looks good, apply the changes by running the command: `terraform apply -var-file=dev.tfvar`.
6. Terraform will provision the AWS resources. Once complete, the EKS cluster will be ready for use.

## Cleanup

To destroy the AWS resources created by this Terraform configuration, run the command: `terraform destroy -var-file=dev.tfvar`. Please note that this action cannot be undone.

## License

This configuration is licensed under the MIT License. See [LICENSE](LICENSE) for more information.
