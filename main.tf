// Configure the Google Cloud provider
provider "google" {
 credentials = file("~/.cloud_keys/aicompute.json")
 project     = "ai-compute-302715"
 region      = "europe-west4"
}

// Google Compute Instance + GPU
resource "google_compute_instance" "default" {
  name = "gpu-vm"
  machine_type = "a2-highgpu-1g"
  zone = "europe-west4-a"
  // Base image
  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  // vroom
  metadata_startup_script = "docker run docker.io/hed854/ideagenerator --rm -it python accelerateur.py"

  network_interface {
    network = "default"
    access_config {

    }
  }

  scheduling {
    preemptible = true
    automatic_restart = false
    on_host_maintenance = "TERMINATE"
  }
}


