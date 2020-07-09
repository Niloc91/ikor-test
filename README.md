# Cloud as Config

## Secrets
man muss erst ein secretskey.txt File in dem Rootordener erstellen. Das muss mit dem secret ausgefüllt werden, damit 
ansible die secrets entschlüsseln kann. 


## Server erstellen
Um servers in Hetzer zu erstellen, verwenden wir terraform.

Erst muss man einen neuen Server in main.tf hinzufügen.
terraform/main.tf
Man muss auf die "floating ip" beachten, um den Server zu verbinden.


Danach muss ein output.tf hinzugefügt. Das output ist zu output.json gescrieben, damit ansible die Infos über die Resources in dem Cloud verwenden kann.  
terraform/output.tf

Am ende verwendet man diesen Befehl, um die Servers zu erstellen. 
```
$ make provision
```

## Server konfigurieren Beispiel
um graylog aufzusetzen
```
$ SERVER=graylog make setup
```

backup
```
$ SERVER=graylog make backup
```

restore
```
$ SERVER=graylog make backup
```