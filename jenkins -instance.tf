resource "google_compute_instance" "jenkins_server" {
    name = "jenkins_sever"
    machine_type = var.machine_type
    zone = var.zone

    boot_disk {
       initialize_params {
         image = var.boot_disk_image
       }
      
    }

    network_interface {
      network = "default"
    }
  


  metadata_startup_script = <<-EOT
    # Install Jenkins
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    sudo apt-get update
    sudo apt-get install -y jenkins

    # Install Terraform
    wget https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_linux_amd64.zip
    unzip terraform_1.0.9_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    rm terraform_1.0.9_linux_amd64.zip

    # Start Jenkins
    sudo systemctl start jenkins
  EOT
}