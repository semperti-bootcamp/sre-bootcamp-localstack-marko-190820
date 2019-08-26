# Creacion de Virtual Machine en RHEV
 Especificaciones:
 - 20GB HDD
 - 2GB RAM
 - 2 Nucleos
 - S.O: Centos 7
 - IP address: 10.252.7.160
 
 ## Instalacion de Terraform y Ansible

 En vista de que se usaran scripts de Terraform para el provisioning de localstack y utilizaremos Ansible para la parte de   instalacion, es necesario instalar estas dos herramientas.
 
 ### Instalacion Terraform:
  - sudo yum install wget unzip
  - wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
  - sudo unzip ./terraform_0.11.13_linux_amd64.zip -d /usr/local/bin/
  - terraform -v

### Instalacion de Ansible:

  - sudo yum install epel-release
  - sudo yum install ansible
### Configuring Ansible Hosts:
  - sudo vi /etc/ansible/hosts
  - Agregar la siguiente linea 
    [group_name]
    alias ansible_ssh_host=your_server_ip
 
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
- abrir los puertos :
   - sudo firewall-cmd --zone=public --add-port=4500-46000/tcp --permanent
   - sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent

##### Usuario creado non-root: localstack

Corremos el comando con el usuario non-root: 

localstack start --host
localstack web start

#### Error 01 encontrado:

![](https://github.com/semperti-bootcamp/sre-bootcamp-localstack-marko-190820/blob/A1/imagenes/erro01.png)



