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
  volume_size       = 20
}

#116.202.177.158
module "docker_registry_server" {
  names             = "docker-registry"
  floating_ip       = "94.130.191.115" #"116.202.185.205"
  network           = "ikor-network"
  server_type       = "cx41"
  setup_private_key = var.setup_private_key
  source            = "./server_template"
  ssh_keys          = var.ssh_keys
  volume_size       = 50
}

module "gitlab_server" {
  names             = "gitlab2"
  floating_ip       = "116.202.186.178"
  network           = "ikor-network"
  server_type       = "cx31"
  setup_private_key = var.setup_private_key
  source            = "./server_template"
  ssh_keys          = var.ssh_keys
  volume_size       = 20
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

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}