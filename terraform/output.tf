output "graylog_ip" {
  value = module.graylog_server.ip_addresses
}

output "docker_registry_ip" {
  value = module.docker_registry_server.ip_addresses
}

output "gitlab_ip" {
  value = module.gitlab_server.ip_addresses
}


//Beispiel
//output "test_ip" {
//  value = module.test_server.ip_addresses
//}
