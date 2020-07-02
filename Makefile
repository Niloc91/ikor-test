provision:
	make -C terraform provision
unprovision:
	make -C terraform unprovision
setup:
	ansible-playbook -i hosts -v ${CONFIG}.yml
backup:
	make -C backups backup