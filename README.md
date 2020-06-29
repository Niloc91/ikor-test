# ansible

This repository contains our ansible scripts and setup that is used for the provisioning of all our servers.

## Example
Graylog
```
ansible-playbook -i hosts -v graylog.yml
```

Install requirements
```
ansible-galaxy install -r requirements.yml
```

terraform 
```
terraform init
```

```
terraform apply && terraform output -json > output/outputs.json
```