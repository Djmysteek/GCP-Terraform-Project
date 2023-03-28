resource "google_dns_managed_zone" "terraform_project_zone" {
  name        = "terraform-gcp-zone"
  dns_name    = "mysteek_terraform_project.com."
}

resource "google_dns_record_set" "terraform_project_record" {
    name = "mysteek_terraform_project.com."
    managed_zone = google_dns_managed_zone.terraform_project_zone.name
    type = "A"
    ttl = 300
    rrdatas = [google_compute_address.gcp_static_ip.address]
}
