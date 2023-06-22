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

resource "google_compute_instance" "terraform-test-v2" {

  name         = "terraform-test-v2"
  machine_type = "e2-medium"
  zone = "europe-west2-c"


  boot_disk {
    auto_delete = true
    device_name = "terraform-test-v2"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20230615"
      size  = 10
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  

  network_interface {
    network = "default"
    access_config {
     
    }
  }

  tags = ["http-server", "https-server"]
  
}



