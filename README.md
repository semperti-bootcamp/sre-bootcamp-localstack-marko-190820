# Bootcamp Localstack 

General	
        - 	Generar un repositorio dentro de https://github.com/semperti-bootcamp y generar un commit con los archivos                   iniciales del repo original SIN MODIFICACIONES
	
	0.1	El nombre debe respetar la siguiente nomenclatura: sre-bootcamp-localstack-name-<YYMMDD>  --> La fecha debe                   ser el día de inicio del Bootcamp
	0.2	Se debe generar un branch por cada assignment
	0.3	Sólo deben generarse PRs con los archivos MODIFICADOS contra el repositorio generado en el punto 0.0
	0.4	Se debe setear como resuelto en Zoho Sprint con el vínculo al PR
	0.5	Siempre se debe incluir un Readme.md con toda la información necesaria para evaluar el trabajo realizado                     [pasos para probar, inconvenientes encontrados, etc.]
  
Crear VM con LocalStack	

        1.0	Seguir los pasos en https://github.com/localstack/localstack
	1.1	La VM no debe tener más que 2 cores y 2 GB de RAM, debe tener CentOS7 & debe ser accesible por VPN
	1.2	Crear un script de Ansible para configurar LocalStack [no la alternativa de Docker]
	1.3	Proveer la IP al portal HTTP de acceso a LocalStack [debe ser accesible por VPN]
	1.4	Crear un Readme explicando todos los pasos realizados.

S3 & DynamoDB	
        
	2.0	Crear un script de Terraform para provisionar S3 & DynamoDB
	2.1	Generar un script para importar archivo JSON desde S3, hacia DynamoDB y validar que los documentos se hayan                   creado
	2.2	Generar un script para backupear una base de datos MySQL hacia S3
	2.3	Crear un Readme explicando todos los pasos realizados.

SQS & Lambda	

        3.0	Crear un script de Terraform para provisionar SQS & Lambda
	
	3.1	Generar una función de Lambda que importa un Python script que genera un echo de un payload de una consulta                   HTTP
	3.2	Generar un script para enviar un mensaje usando una Queue en SQS para que un usuario pueda configurar un 
	
	         Payload y que active la función en Lambda
	3.3	Crear un Readme explicando todos los pasos realizados.

Documento de Implementación	

        4.0	Generar un documento con diagramas de alto y bajo nivel explicando cómo puede ser incluido en un circuito de                 CI/CD
	4.3	Explicar cuidadosamente cómo pueden ser explotados estos servicios y sus limitaciones
