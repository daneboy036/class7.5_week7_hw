# Creating a Git Repository

1. Navigate to [GitHub](https://github.com) and log into your account
1. Click the `Repositories` tab
1. Click the Green `New` button
   ![Create New Repo](./Create%20New%20Repo.png)
1. Enter the details for your repository
   ![Enter Repo Settings](./Enter%20Repo%20Settings.png)
1. Pick a Path (for ease of use clone your repository) 1. Under Quick setup copy the ssh or https command
   ![Pick a Path](./Choose%20a%20Path.png)
1. Open a terminal
1. Navigate to the directory your project are in
1. Run `git clone <paste in the quick setup string you copied>`
1. cd into your directory and then type `code .`

# Terraform

## Setup

1. Create a folder called `terraform`
1. Add a file called `auth.tf` to the `terraform` folder
1. Add a file called `vpc.tf` to the `terraform` folder
1. Add a file called `local-file.tf` to the `terraform` folder
1. Add a file called `output.tf` to the `terraform` folder
1. Navigate to [Terraform provider for Google Cloud](https://registry.terraform.io/providers/hashicorp/google/latest/docs) and click the `USE PROVIDER` button and copy the provider section to `auth.tf`
   ![Google Provider](./Google%20Provider%20Terraform.png)
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

# Additional Notes

- Add a .gitignore file so that your terraform state and other sensitive files aren't pushed to your git repo
- When you're ready to push your changes run

```bash
git status
git add .
git commit -m 'Homework'
git push origin main
```

- In a work environment you'd create a branch and do a pull request instead of pushing directly to main or working on the main branch
- All terraform commands must be run from within the folder that has your terraform files
- The VPC above is pretty basic. See the terraform docs for information on more arguments you can pass when creating the vpc
