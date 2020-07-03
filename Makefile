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