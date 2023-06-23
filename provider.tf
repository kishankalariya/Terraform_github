# This code is compatible with Terraform 4.25.0 and versions that are backwards compatible to 4.25.0.
# For information about validating this Terraform code, see https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/google-cloud-platform-build#format-and-validate-the-configuration

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.69.1"
    }
  }
}

provider "google" {

  project = "terraform-project-390414"
  region = "europe-west2"
  zone = "europe-west2-c"
  credentials = "./terraform-project-390414-cd2ddabd5354.json"

}