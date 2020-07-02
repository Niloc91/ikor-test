data "hcloud_floating_ip" "master" {
  ip_address = var.floating_ip
}

data "hcloud_network" "master" {
  name = var.network
}