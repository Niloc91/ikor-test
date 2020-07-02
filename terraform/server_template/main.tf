resource "hcloud_floating_ip_assignment" "main" {
  floating_ip_id = data.hcloud_floating_ip.master.id
  server_id      = hcloud_server.web.id
}

resource "hcloud_server" "web" {
  depends_on  = [hcloud_volume.default]
  image       = "ubuntu-18.04"
  location    = "nbg1"
  name        = "${var.names}-server"
  server_type = var.server_type
  ssh_keys    = var.ssh_keys
}

resource "hcloud_volume" "default" {
  location = "nbg1"
  name     = "${var.names}-volume"
  size     = 20
  format   = "ext4"
}

resource "hcloud_volume_attachment" "main" {
  automount = true
  server_id = hcloud_server.web.id
  volume_id = hcloud_volume.default.id
}


