
# README - AKS Terraform Project

📖 About
This repository contains a minimal Terraform setup to provision an AKS (Azure Kubernetes Service) cluster on Microsoft Azure.
The project is designed for learning purposes and demonstrates how to combine Azure CLI and Terraform to automate infrastructure provisioning.

🚀 Features
- Creates a new Resource Group in Azure
- Deploys an AKS Cluster with default node pool
- Uses Terraform for infrastructure as code
- Compatible with Azure CLI authentication
📂 Project Structure
main.tf                  # Terraform configuration
.gitignore               # Git ignore file
README.md                # Project documentation
docs/
 └── Dokumentasjon Norsk - komme igang med Azure CLI og Terraform.docx
⚙️ Prerequisites
- Terraform (v1.x or later): https://developer.hashicorp.com/terraform/downloads
- Azure CLI: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
- An active Azure Subscription: https://portal.azure.com/


🔑 Getting Started
1. Clone the repository:
   git clone https://github.com/vlori2k/aks-terraform.git
   cd aks-terraform

2. Login to Azure:
   az login
   or with tenant:
   az login --tenant <TENANT_ID>

3. Initialize Terraform:
   terraform init

4. Preview the plan:
   terraform plan

5. Apply the configuration:
   terraform apply

   Confirm with 'yes' when prompted. Terraform will create the resource group and AKS cluster.
📚 Documentation
Inside the docs/ folder you’ll find a document written in Norwegian that describes the step-by-step process used to:
- Install Terraform
- Set up Azure CLI
- Deploy an AKS cluster

🧹 Cleanup
To remove all resources created by this project, run:
terraform destroy
📌 Notes
- This project is for educational purposes and not intended for production workloads.
- Remember that Azure resources may incur costs when deployed.
👨‍💻 Author
Vlorjan Badallaj
📧 vlorjanbadallaj@hotmail.com
