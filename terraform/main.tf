# Définition du fournisseur GCP
provider "google" {
  project = var.project_id
  region  = var.region
}

# Création d'une instance VM
resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Assigner une IP publique
    }
  }
}

