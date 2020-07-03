# ansible

This repository contains our ansible scripts and setup that is used for the provisioning of all our servers.

## Example
Graylog
```
CONFIG=graylog make setup
```

Install requirements
```
make ansible-install
```

terraform 
```
make provision
```

backup
```
SERVER=graylog make backup
```