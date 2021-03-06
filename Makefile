provision:
	make -C terraform provision
unprovision:
	make -C terraform unprovision
setup:ansible-install encrypt
	ansible-playbook -i hosts.yml -v ${SERVER}.yml
backup:
	make -C backups backup
restore:
	make -C restores restore
encrypt:
	ansible-vault encrypt roles/common/vars/secrets.yml --output roles/common/vars/secrets.yml.encrypt --vault-password-file secretskey.txt
decrypt:
	ansible-vault decrypt roles/common/vars/secrets.yml.encrypt --output roles/common/vars/secrets.yml --vault-password-file secretskey.txt
ansible-install:
	ansible-galaxy install -r requirements.yml