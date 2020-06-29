output "server_ip_address" {
  value = hcloud_server.web.ipv4_address
}

output "floating_ip_address" {
  value = hcloud_floating_ip.master.ip_address
}