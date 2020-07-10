provider "hcloud" {
  token = var.hcloud_token
}

//logs.ikor.de
module "graylog_server" {
  names             = "graylog"
  floating_ip       = "116.202.181.110"
  network           = "ikor-network"
  server_type       = "cpx31"
  setup_private_key = var.setup_private_key
  source            = "./server_template"
  ssh_keys          = var.ssh_keys
}


//module "test_server" {
//  dns               = "test.ikor.de"
//  names             = "test"
//  server_type       = "cx11"
//  floating_ip       = //ausfühlen
//  setup_private_key = var.setup_private_key
//  source            = "./server_template"
//  ssh_keys          = var.ssh_keys
//}

