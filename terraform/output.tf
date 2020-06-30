output "graylog_ip" {
  value = module.graylog_server.ip_addresses
}

output "test_ip" {
  value = module.test_server.ip_addresses
}
