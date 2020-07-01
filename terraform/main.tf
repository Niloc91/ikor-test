provider "hcloud" {
  token = var.hcloud_token
}

module "graylog_server" {
  dns               = "logs.ikor.de"
  names             = "graylog"
  server_type       = "cx11"
  setup_private_key = var.setup_private_key
  source            = "./server_template"
  ssh_keys          = var.ssh_keys
}


module "test_server" {
  dns               = "test.ikor.de"
  names             = "test"
  server_type       = "cx11"
  setup_private_key = var.setup_private_key
  source            = "./server_template"
  ssh_keys          = var.ssh_keys
}

