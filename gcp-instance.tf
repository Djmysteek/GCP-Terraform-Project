resource "google_compute_instance" "terraform-assignment" {
  name         = "terraform-assignment"
  machine_type = var.machine_type

  boot_disk {
  initialize_params {
  image = var.boot_disk_image
    }
  }


  network_interface {
      network = "default"
      access_config {
        nat_ip = google_compute_address.terraform_static_ip.address
      
    }
}
    


   metadata_startup_script = <<-EOF

  
    # Install Docker
    sudo apt-get update
    sudo apt-get install -y docker.io
    service docker start
    touch dockerfile
    EOF
 
  
    connection {
       type        = "ssh"
        user        = "ubuntu"
        host        = google_compute_address.terraform_static_ip.address
        timeout     = "2m"
        private_key = file("mykey")
      


  }
    }


