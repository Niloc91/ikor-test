provision:
	make -C terraform provision
unprovision:
	make -C terraform unprovision
setup:
	ansible-playbook -i hosts.yml -v ${CONFIG}.yml
backup:
	make -C backups backup
restore:
	make -C restores restore
encrypt:
	ansible-vault encrypt roles/common/vars/secrets.yml --output roles/common/vars/secrets.yml.encrypt --vault-password-file secretskey.txt
decrypt:
	ansible-vault decrypt roles/common/vars/secrets.yml.encrypt --output roles/common/vars/secrets.yml --vault-password-file secretskey.txt