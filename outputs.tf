output "gcp_project" {
  description = "The GCP Project where all resources are deployed."
  value       = var.gcp_project_id
}

output "gcp_region" {
  description = "The GCP region where all resources are deployed."
  value       = var.gcp_region
}

output "gcp_zone" {
  description = "The GCP zone where all resources are deployed."
  value       = google_compute_instance.vm_instance.zone
}

output "instance_name" {
  description = "The name of the compute instance."
  value       = google_compute_instance.vm_instance.name
}

output "instance_nat_ip" {
  description = "The public IP address of the compute instance."
  value       = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

output "instance_network_ip" {
  description = "The internal IP address of the compute instance."
  value       = google_compute_instance.vm_instance.network_interface.0.network_ip
}

output "vpc_name" {
  description = "The name of the virtual private network (VPC)."
  value       = google_compute_network.vpc_network.name
}
