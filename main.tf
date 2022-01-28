terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }

  required_version = ">= 1.1.0"

  cloud {
    organization = "scaleworx-sandbox"

    workspaces {
      name = "google-cloud-demo"
    }
  }
}

provider "google" {
  #credentials = file("<premium-highway-319908-c7c8a9bf4eb0.json")

  project = "premium-highway-319908"
  region  = "asia-south1"
  zone    = "asia-south1-a"
}

# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }
