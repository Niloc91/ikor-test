output "ip_addresses" {
  value = {
    server       = hcloud_server.web.ipv4_address
    floating     = data.hcloud_floating_ip.master.ip_address
    linux_device = hcloud_volume.default.linux_device
  }
}
