resource "google_compute_instance" "terraforms-instances" {
  name         = "terraform-instances"
  machine_type = var.machine_type


   metadata_startup_script = <<-EOF
    # Install Docker
    sudo apt-get update
    sudo apt-get install -y docker.io
    
       # Transfer Dockerfile
    sudo mkdir /app
    sudo chown ${var.username}:${var.username} /app
  EOF
 
  
    provisioner "file" {
      source = "./Dockerfile"
      destination = "/app/Dockerfile"
      connection {
        type        = "ssh"
        user        = "ubuntu"
        host        = google_compute_address.gcp_static_ip.address
        private_key = file("./privatekey.pem")
        timeout     = "2m"
  }
    }

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }


  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.gcp_static_ip.address
      
    }
}
  }