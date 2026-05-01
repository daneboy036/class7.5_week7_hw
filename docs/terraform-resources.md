# Terraform

## Setup

1. Create a folder called `terraform`
1. Add a file called `auth.tf` to the `terraform` folder
1. Add a file called `vpc.tf` to the `terraform` folder
1. Add a file called `local-file.tf` to the `terraform` folder
1. Add a file called `output.tf` to the `terraform` folder
1. Navigate to [Terraform provider for Google Cloud](https://registry.terraform.io/providers/hashicorp/google/latest/docs) and click the `USE PROVIDER` button and copy the provider section to `auth.tf`
   ![Google Provider](../screenshots/Google%20Provider%20Terraform.png)
1. Under the provider block replace `# Configuration options` with the lines below:

```text
  project     = "my-project-id"
  region      = "us-central1"
```

1. Replace the value for project with the id of your project in GCP
1. Open a terminal and run `terraform init`

## Creating a VPC

1. Copy the snippet from [Example Usage - Network Basic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network.html#example-usage---network-basic) into `vpc.tf`
1. Update the value of name
1. Open a terminal and run:

```bash
terraform validate
terraform plan
terraform apply
```

## Creating a local file

1. Copy the snippet from [Local File Example](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file#example-usage) into `local-file.tf`
1. Update the content and file name
   \*\*Only filename is required
1. Open a terminal and run:

```bash
terraform validate
terraform plan
terraform apply
```

## Cleaning Up

1. Run the following

```bash
terraform destroy
```
