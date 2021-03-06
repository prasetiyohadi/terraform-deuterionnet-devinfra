terraform {
  required_version = ">= 1.0.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.82.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}

# Required permissions:
# - compute.networks.create
# - compute.networks.delete
# - compute.networks.get
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

# Required permissions:
# - compute.zones.get
# - compute.instances.create
# - compute.disks.create
# - compute.subnetworks.useExternalIp
# - compute.subnetworks.useExternalIp
# - compute.instances.get
# - compute.instances.delete
# - compute.instances.setTags
# - compute.instances.setScheduling
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
