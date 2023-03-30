provider "google" {
  project = var.project
  region  = var.region
  zone = var.zone
}

provider "jenkins" {
  server_url = "https://jenkins.url"
  username   = "admin"
  password   = "password"
}

terraform {
  required_providers {
    jenkins = {
      source = "taiidani/jenkins"
      version = "0.10.0"
    }
  }
}
