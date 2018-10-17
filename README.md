# Docker image: React360 in CentOS 7	
Running react360  on centos/nodejs8


Usage:
```
U=$(whoami)
UID=$(id ${U}|sed -r 's|uid=([0-9]*)\(.*|\1|')
G=$(id -g -n ${U})
GID=$(id -g  ${U})
N=$(basename ${PWD})
docker run -e APP_USER=$(whoami) -e APP_UID=${UID} -e APP_GROUP=${G} -e APP_GID=${GID} -e APP_NAME=${N} -v ${PWD}:/workspace -p 8081:8081 registry.ott-consult.de/oc/react360
```