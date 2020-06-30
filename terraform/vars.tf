# Set the variable value in *.tfvars file
# or using the -var="hcloud_token=..." CLI option
variable "hcloud_token" {
  default = "29zd7i87emgdzchO2USpHLfl5Zo9BrOsIoAjzjvHNpYzGBvM1GBUPnt40B88S2mw"
}

variable "setup_private_key" {
  default = "~/.ssh/id_rsa"
}

variable "ssh_keys" {
  default = [
    "colin.siew.macbook",
    "Thomas.Stieglmaier.macbook",
    "Florian.Heere.Laptop",
    "mario.schmidt.macbook"
  ]
}

