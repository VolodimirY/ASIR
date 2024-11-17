Previamente se recomienda leer el tema “directory tag” del libro enlazado a continuación:
http://sites.duke.edu/workblog/files/2014/12/www.dedoimedo.com-apache-web-server-lm.pdf

## Ejercicios
Crea un directorio llamado "dir1" y otro llamado "dir2"
	
Explica qué diferencia existe entre ambos.:
<Directory /var/www/example1>
Order Deny,Allow
Deny from All
Allow from 192.168.1.100
</Directory>


<Directory /var/www/example1>
Order Allow,Deny
Deny from All
Allow from 192.168.1.100
</Directory>

		
Para dir1
Permite el acceso de las peticiones provenientes de 10.3.0.100

Permite el acceso desde "marisma.intranet"

Permite el acceso desde cualquier subdominio de "marisma.intranet"

Permite el acceso de las peticiones provenientes de "10.3.0.100" con máscara "255.255.0.0"

Modifica la configuración de forma que el acceso a dir1:
Se permita a "marisma.intranet" y no se permita desde 10.3.0.101"
	
Modifica la configuración de forma que el acceso a dir2:
Se permita a "10.3.0.100/8" y no a "marisma.intranet"
