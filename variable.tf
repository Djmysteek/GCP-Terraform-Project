variable "project" {
    default = "terraform-project-381302"
  
}

variable "region" {
  default ="us-central1"
}
  
  variable "zone" {
    default = "us-central1-a"
  }

variable "machine_type" {
  default = "e2-micro"
}

variable "boot_disk_image" {
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "google_storage_bucket_location" {
  default = "US"
}

variable "google_compute_address" {
  default = {

    name = "terraform_project_static_ip"
    region = "us-central1"
} 
}




variable "username" {
  default = "ubuntu"
}

variable "host" {
  default = "google_compute_address.gcp_static_ip"
  
}

variable "public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvH6Zw7UYeOuPCUS1tOw2H/mMMiOrJ1eivYLIZY3/ipZY9sbb5MUyx/W2oJwmBWq2Z/AJjLg/PvmTiqcnTKK/QrMix2FHZSSljLJ6nxKqwagzuIVdsQZC8J3HHmMRj217QkhMTK10DhAhL8MBDQ709Ald8dKyRPpijA6bvacXOA/qZ04v1qA321ojb2dWU4I70ev2tPQvyMoRfHIOBjIvJEztCG2rJsu4PViKZjkljclA1HvZTh6SzZZSQh+4iV46EQgrPnjVYMQ3oaYNllywyzxt7HXg0H55/ZDtlJr4jpW+xFVf5rqmBcE5E/ZBtQnwP2gufaBt03WctR2vfjh6AWtzc+7au4eHs4x2SGKx4MV00uljz8/S63gGo3/eFjjgY9qplUn4bAHrh7oA85G9X3jzurXD/2SmIKUxESlz6mvTSJd77w1Tqqjrk/9ng+NYYuuGvGNqrGnY9EAo0xQDKdDt966E0DhLpeFAoubzB1MM4n4lQOBC8D12PmBUfvl8= djmys@WIN-005FAODBRML"
}