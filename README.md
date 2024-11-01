# Provision Infrastructure (Django web app and MySQL Database) with Terraform (IaC)

![Terraform](https://github.com/user-attachments/assets/9ea26beb-1e8b-4f67-819f-d9cd0aac05ee)



## Overview

This project showcases a Django web application that utilizes MySQL as its database. The entire infrastructure is provisioned and managed using Terraform, allowing for efficient deployment and scalability.

### 1. Clone the Repository

```bash
git clone https://github.com/panduhimal/django-docker-mysql-terraform-app.git
cd django-docker-mysql-terraform-app
```
### 2. Installation

Before deploying the infrastructure, please ensure you have the following installed:

- **Terraform**: Download and install Terraform from [the official website](https://www.terraform.io/downloads.html).
- **Docker**: Download and install Docker from [the official website](https://www.docker.com/products/docker-desktop).

**Important**: Ensure that Docker is running before executing `terraform apply`.

### 3. Provision Infrastructure with Terraform

```bash
cd terrafrom
terraform init     # Initialize the Terraform configuration
terraform apply    # Apply the configuration to create resources
```
### 4. Access the Application

 ```bash
http://localhost:8000
```
## Conclusion
Thank you for exploring this project! If you have any questions or feedback, feel free to reach out.
