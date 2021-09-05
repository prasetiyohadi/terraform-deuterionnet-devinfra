output "network_id" {
  value = google_compute_network.vpc_network.id
}

output "network_gateway_ipv4" {
  value = google_compute_network.vpc_network.gateway_ipv4
}

output "instance_id" {
  value = google_compute_instance.vm_instance.id
}

output "instance_network_ip" {
  value = google_compute_instance.vm_instance.network_interface.0.network_ip
}

output "instance_nat_ip" {
  value = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}
