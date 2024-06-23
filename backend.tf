terraform {
  cloud {
    organization = "Terraform-deep-dive-2024-latest"
    workspaces {
      name = "web-network-dev"
    }
  }
}