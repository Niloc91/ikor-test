output "ip_addresses" {
  value = {
    server=hcloud_server.web.ipv4_address
    floating=hcloud_floating_ip.master.ip_address
  }
}
