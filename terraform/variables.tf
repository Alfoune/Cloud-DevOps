variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région GCP"
  type        = string
  default     = "europe-west9"
}

variable "zone" {
  description = "Zone de déploiement"
  type        = string
  default     = "europe-west1-b"
}

variable "instance_name" {
  description = "Nom de la VM"
  type        = string
  default     = "my-vm-instance"
}

variable "machine_type" {
  description = "Type de machine"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "Image de l'OS"
  type        = string
  default     = "debian-11-bullseye-v20250123"
}
