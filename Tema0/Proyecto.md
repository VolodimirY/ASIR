![image](https://github.com/user-attachments/assets/69d6a0d6-0deb-42ac-90bc-6b7163f60cbd)

## Servicio de Red e Internet

### Volodimir Yarmash Yarmash


# Vamos a instalar un servidor web interno para un instituto. Se Pide:
# -Instalación del servidor web apache. Usaremos dos dominios mediante el archivo hosts: centro.intranet y departamentos.centro.intranet. El primero servirá el contenido mediante wordpress y el segundo una aplicación en python

Para instalar Apache2, necesitamos usar el comando `sudo apt update` para comprobar si hay alguna actualización importante.
Ahora introducimos sudo apt install apache2 y esperamos a que se instale.

![image](https://github.com/user-attachments/assets/c588e2cb-b36f-4eae-9194-5bd8200d4f0d)

Agregamos apache en el firewall para que no ocurran problemas.

![image](https://github.com/user-attachments/assets/c823c63f-1c84-46fb-a8a0-1a7601fec754)

Comprobamos el status de Apache2 con el comando sudo systemctl status apache2

![image](https://github.com/user-attachments/assets/32039b3b-e486-455e-be14-46b5c2626bf4)

Modificamos el fichero hosts

introducimos sudo  nano /etc/hosts  e introducimos los dominios de esta forma: 

![image](https://github.com/user-attachments/assets/6edd42ab-fcda-4a02-938e-37d70c6fd191)

Creamos el archivo de configuración apache

Introducimos el comando cd /etc/apache2/sites-available para posicionarnos en el directorio necesario.
Introducimos  sudo nano centro.intranet.conf
Dentro tenemos que introducir esto, podemos sacarlo del archivo 000-default.conf y pegarlo.

![image](https://github.com/user-attachments/assets/fe719393-d394-42cc-bbf6-52f74eff760b)

Ahora tenemos que crear el fichero para el otro dominio
Introducimos sudo nano departamentos.centros.intranet.conf
Introducimos este texto

![image](https://github.com/user-attachments/assets/501bb035-d6b0-4553-a759-07f7cb15f419)

Hacemos el ensite con el comando sudo a2ensite (dominio) y reiniciamos apache con el comando sudo systemctl reload apache2.

![image](https://github.com/user-attachments/assets/521410e9-062d-4c6e-ba7e-004208c881db)

Creamos los directorios en la ruta var/www
Accedemos al directorio usando el comando cd /var/www
Creamos el directorio con  sudo mkdir centro.intranet y el segundo sudo mkdir departamentos.centro.intranet.

![image](https://github.com/user-attachments/assets/d4035e25-4bf5-4d9f-909c-c5c323b1577b)

Comprobamos
Para comprobar si hemos hecho bien la configuración, tenemos que meternos en la barra de búsqueda en cualquier buscador  e introducir los dominios escribiendo por delante http://

![image](https://github.com/user-attachments/assets/cf087903-0c9f-451b-944c-39289b81b671)

# -Activar los módulos necesarios para ejecutar php y acceder a mysql

Entramos en el terminal e instalamos todo lo necesario con estos comandos

sudo apt install php 

sudo apt install libapache2-mod-php 

sudo apt install php-mysql 

sudo apt install mysql-server

Y hacemos un restart con Sudo systemctl restart apache2.
Con el comando sudo ufw app list, podemos ver si la instalación se ha realizado bien.

![image](https://github.com/user-attachments/assets/f94ae37b-f976-41bc-9436-d5d74cf28267)

# -Instala y configura wordpress

Nos metemos en la página oficial www.wordpress.com y descargamos wordpress. Descomprimimos el archivo.

![image](https://github.com/user-attachments/assets/0d19aada-52ee-4930-879b-7112422beaa9)

Nos situamos en el directorio de descargas, hacemos una copia a el directorio /var/www/html y añadimos todos los permisos con chmod.

![image](https://github.com/user-attachments/assets/c89ecffc-6236-4dfc-8c09-0f46d2d74ead)

Comprobamos de la instalación.

Nos situamos en el buscador e introducimos localhost/wordpress-6.7.1

![image](https://github.com/user-attachments/assets/0cd7f7a8-ae90-4e4a-92d7-9c72704aea76)

Creamos una base de datos con Mysql

Introducimos el comando sudo mysql -u root -p
y con sql creamos una base de datos usando el comando create database wordpress;
salimos con exit.

![image](https://github.com/user-attachments/assets/c5d5abce-a5a0-4c93-9853-a6b39479f881)

Configuración Wordpress

Entramos en http://localhost/wordpress-6.7.1
Pulsamos la carpeta de wordpress y después en el botón azúl de la página que se sitúa abajo(Lets Go).

![image](https://github.com/user-attachments/assets/857c6137-dff9-49e2-a2e5-b3687cd61ee0)

![image](https://github.com/user-attachments/assets/6e97daa7-f0c5-4514-a397-25664b7d18f8)

Introducimos la información de autentificación, pulsamos submit.

![image](https://github.com/user-attachments/assets/1f48f3c6-2f65-4b10-a1dd-85973f95b37c)

Nos envía a la siguiente página.
Rellenamos la informacion.

![image](https://github.com/user-attachments/assets/888fa954-a040-4d34-97a6-8b117dbc9c59)

Pues listo, ya tenemos wordpress.

![image](https://github.com/user-attachments/assets/865d5c39-08d1-4f44-8e3d-9db65fda38cc)

Y hacemos LOG IN.

![image](https://github.com/user-attachments/assets/21075093-360d-4852-93fd-2ff63b07f0a7)

![image](https://github.com/user-attachments/assets/09749ca3-613b-4fbd-bf68-ba820ab7c600)

# -Activar el módulo “wsgi” para permitir la ejecución de aplicaciones Python
Introducimos los siguientes comandos:

sudo apt install libapache2-mod-wsgi-py3
sudo a2enmod wsgi
sudo systemctl reload apache2

![image](https://github.com/user-attachments/assets/7d03cfe5-c4cd-4eee-822c-08dadcdab9da)

# -Crea y despliega una pequeña aplicación python para comprobar que funciona correctamente.

Nos dirigimos al directorio departamentos.centro.intranet con el comando: cd var/www/departamentos.centro.intranet 
Creamos un directorio app:  mkdir app
Creamos un archivo dentro de app: sudo nano /app/app.wsgi

![image](https://github.com/user-attachments/assets/4bbbdb6c-8ae2-4ad2-b1ea-7ceddd126346)

introducimos código pyton

![image](https://github.com/user-attachments/assets/21be98d4-7b01-464a-a608-63748c811b52)

Tenemos que incluir wsgi, por lo cual nos dirigimos a sites-available usando el comando
cd /etc/apache2/sites-available/

Modificamos el archivo departamentos.centro.intranet de la siguiente forma:

![image](https://github.com/user-attachments/assets/4564ecd3-92a1-4069-8ab1-e5e9ef55c484)

# -Adicionalmente protegeremos el acceso a la aplicación python mediante autenticación

Creamos un archivo .htpasswd
Tenemos que instalar una herramienta con el comando sudo apt install apache2-utils
Agregamos un usuario con el comando sudo htpasswd -c /etc/apache2/.htpasswd admin

![image](https://github.com/user-attachments/assets/43769424-8b38-41ce-9a74-a3418e8fdc41)

Tenemos que cambiar la configuración usando sudo nano /etc/apache2/sites-available/departamentos.centro.intranet.conf
Debe quedar asi.

![image](https://github.com/user-attachments/assets/8976a30e-3061-4187-95b0-e228eaf6d2d2)

Hacemos un reload de apache2 y listo 

![image](https://github.com/user-attachments/assets/c4b8022b-ed7c-4a7e-ad71-b35ea9510dd2)

# -Instala y configura awstat.

Para instalar awstat necesitamos introducir el comandos sudo apt install awstats

Y tenemos que crear un archivo de configuración asi que copiamos el predeterminado sudo cp /etc/awstats/awstats.conf /etc/awstats/awstats.centro.intranet.conf

Abrimos el archivo e introducimos el dominio en estos sitios:

![image](https://github.com/user-attachments/assets/96a147fc-ffb2-48f9-a180-ab44e1f6e415)

Logformat lo cambiamos a 1

![image](https://github.com/user-attachments/assets/377204e7-577c-423e-a5ca-e5794016c06b)

Actualizamos con el comando sudo /usr/lib/cgi-bin/awstats.pl -config=centro.intranet -update

![image](https://github.com/user-attachments/assets/78d0f1b4-a26e-4101-9d0a-0d5f5adc6e84)

# -Instala un segundo servidor de tu elección (nginx, lighttpd) bajo el dominio “servidor2.centro.intranet”. Debes configurarlo para que sirva en el puerto 8080 y haz los cambios necesarios para ejecutar php. Instala phpmyadmin.

A la finalización del trabajo se procederá a una exposición de la presentación

Enlaces de interés

https://uniwebsidad.com/libros/python/capitulo-13/python-bajo-apache


Instrucciones de entrega

Se creará un repositorio en Github en el que se documentarán los pasos llevados a cabo para la realización de cada una de las actividades contempladas. La documentación debe incluir fragmentos de código empleados, además de imágenes que muestren la pantalla de la máquina virtual durante el proceso.

En enlace de dicho repositorio se incluirá en el repositorio del módulo, especificando claramente que se trata de la práctica de servidores web.

Fecha de entrega: La fecha límite de entrega será el 5 de diciembre.


