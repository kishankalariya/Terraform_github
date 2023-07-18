

resource "google_compute_instance" "terraform-test-v1" {

  name         = "terraform-test-v1"
  machine_type = "e2-medium"
  zone         = "europe-west2-c"


  boot_disk {
    auto_delete = true
    device_name = "terraform-test-v1"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20230615"
      size  = 15
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



