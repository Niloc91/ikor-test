unprovision:
	terraform destroy
provision:
	terraform init && terraform apply && terraform output -json > output/outputs.json