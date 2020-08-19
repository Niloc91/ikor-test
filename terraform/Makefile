unprovision:
	terraform destroy -target=module.${SERVER}
provision:
	terraform init && terraform apply && terraform output -json > output/outputs.json