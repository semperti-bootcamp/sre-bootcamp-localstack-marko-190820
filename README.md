# Creacion de Virtaul Machine en RHEV
 Especificaciones:
 - 20GB HDD
 - 2GB RAM
 - 2 Nucleos
 - S.O: Centos 7
 - IP address: 10.252.7.160
 
 ## Instalacion de Localstack (non-docker mode) Hecho con script de Ansible
  
 Dependencias: 
 
- epel-release 
- python 
- python-devel 
- python-pip 
- gcc 
- git 
- npm 
- java-1.8.0-openjdk 
- java-1.8.0-openjdk-devel
- Maven 3.6
- terraform
- abrir los puertos :
  sudo firewall-cmd --zone=public --add-port=4500-46000/tcp --permanent
  sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent

Usuario creado non-root: localstack
