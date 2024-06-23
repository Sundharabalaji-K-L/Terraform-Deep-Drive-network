terraform {
  cloud {
    organization = "terraform-deep-dive-2024"
    workspaces {
      name = "web-network-dev"
    }
  }
}