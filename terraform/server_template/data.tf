data "hcloud_floating_ip" "master" {
  ip_address = var.floating_ip
}