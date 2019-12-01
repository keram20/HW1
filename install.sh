
#!/bin/bash
yum install docker

yum install update all

systemctl start docker.service 
 
systemctl status docker.service 
docker -v info


docker  run  ­i  ­t  ubuntu  /bin/bash 
