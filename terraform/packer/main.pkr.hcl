packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "~> 1"
    }
  }
}
variable "project_id" {
  type    = string
  default = "big-tp"
}

variable "image_name" {
  type    = string
  default = "custom-image"
}

variable "region" {
  type    = string
  default = "europe-west9-b"
}

source "googlecompute" "ubuntu" {
  project_id      = var.project_id
  machine_type    = "e2-medium"
  zone            = "${var.region}"
  source_image    = "debian-11-bullseye-v20250123"
  image_name      = var.image_name
  ssh_username    = "packer"
}

build {
  sources = ["source.googlecompute.ubuntu"]

  provisioner "ansible" {
    playbook_file = "./ansible/playbook.yml"
  }
}
