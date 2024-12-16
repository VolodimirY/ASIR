![image](https://github.com/user-attachments/assets/0dd2d554-3f56-4fea-8ab2-58c7606b4ecf)

# Servicio de Red e Internet

### Volodimir Yarmash Yarmash

## Usando una instancia AWS debemos instalar Apache con las siguientes opciones de configuración:

Para instalar apache2 en la instancia de AWS EC2 debemos de lanzar esta instancia antes que nada y conectarnos para poder manipular ubuntu.

Hacemos un update con `sudo apt update`

Instalamos Apache2 con el comando `sudo apt install apache2`

![image](https://github.com/user-attachments/assets/49f9fcb4-599b-46ce-9156-3ae27ad0165f)

## Activar la autenticación con MySql

Para activar la autenticación con MySql debemos descargar MySql-server antes.

Para ello usamos el comando `sudo apt install mysql-server.`

![image](https://github.com/user-attachments/assets/1dec20b3-3b0e-4b62-9c0a-2edc25105154)

Accedemos a MySql usando el comando `sudo mysql -u root -p.`

![image](https://github.com/user-attachments/assets/f2657311-4907-4d70-93e5-fc3189169da6)

Introducimos `Select user, plugin FROM mysql.user;` patra comprobar si el plugin de auth_socket está presente.

![image](https://github.com/user-attachments/assets/3a960883-e2f4-4acd-ae72-ee37b120f5c7)

Modificamos la contraseña con este comando mysql: `ALTER USER 'root'@'localhost' identified WITH mysql_native_password by 'user123';`

![image](https://github.com/user-attachments/assets/0cca3e56-c38e-4360-a536-dd157d441c39)

Y usamos` Flush PRIVILEGES`; para aplicar cambios en los privilegios.

![image](https://github.com/user-attachments/assets/49fa9417-0a6a-49cc-aae4-1967f2c1aaf8)

Salimos del modo sql usando` exit`

Usamos el comando `sudo mysql -u root -p` para entrar con root e introducimos una contraseña errónea. Como podéis observar, nos ha negado el acceso.

Ahora introducimos la contraseña correcta y nos da el acceso a root.

![image](https://github.com/user-attachments/assets/bf82823f-bbb7-4d7c-be24-001d31fa5241)

## Crear un certificado autofirmado y activar el módulo SSL

Entramos en el manager de certificados.

![image](https://github.com/user-attachments/assets/a0ce0a2c-3f11-4d58-bbcb-4dd609725d13)

Solicitamos el certificado pulsando este boton.

![image](https://github.com/user-attachments/assets/d200a8db-e7d8-4628-abd3-901ba57243c7)

Introducimos el dns que nos interesa, en nuestro caso voy a introducir `volodimirprueba.com` como dns (Borramos el de aws e introducimos el nuevo)

![image](https://github.com/user-attachments/assets/a90ddb23-3183-40f2-adfa-67e85753d3cf)

![image](https://github.com/user-attachments/assets/b1ec175d-e694-4b27-ae0c-0055f117532c)

A continuación debemos exportar la configuración DNS en csv (botón azul).

![image](https://github.com/user-attachments/assets/cf2ffd51-a9c6-48c2-93a8-9a8904152986)

 Se nos descargará un archivo con los siguientes datos.

![image](https://github.com/user-attachments/assets/52f236f6-6d87-4507-ad2c-3bad611f2634)

Ahora en el buscador entramos en el servicio de route 53.

![image](https://github.com/user-attachments/assets/fb5750d9-7095-4d4b-ad1b-46a92c59f60a)

Creamos una zona alojada, introducimos el nombre de dominio del archivo, y de comentario el segundo código que actúa como validador.

![image](https://github.com/user-attachments/assets/63d7bfe8-a407-465d-ba02-e32099e23db1)

![image](https://github.com/user-attachments/assets/e2f3809c-1bb9-4672-8a48-28612266b816)

Ahora volvemos al apartado de certificados y esperamos a que validen nuestro dns.

![image](https://github.com/user-attachments/assets/fff718a3-e761-4454-863a-9ec138d9abe5)

Para hacerlo con Apache tenemos que activar el módulo ssl con el comando `sudo a2enmod ssl.`

![image](https://github.com/user-attachments/assets/76e3669e-df07-4b15-8b33-33886fd362a5)

Escribimos este comando: `sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt`

Si lo desmontamos:

` openssl req` indica que quieres ejecutar una solicitud
 
` -x509 genera` un certificado en formato X.509, que es el estándar para certificados digitales utilizados en SSL/TLS.
 
`-nodes `asegura que la clave privada no esté encriptada

`-days 365 `Especifica que el certificado tendrá una validez de 365 días

`-newkey rsa:2048 `Indica que se debe generar una nueva clave privada usando el algoritmo RSA con un tamaño de 2048 bits

![image](https://github.com/user-attachments/assets/8a74e1a7-87c6-4c57-b00d-ec713647a32b)

Tenemos que rellenar alguna información  y estaría listo. Lo podemos probar con el dominio predeterminado. 

![image](https://github.com/user-attachments/assets/6ac85844-1726-431d-89b7-8e4b1fd21808)

## Bibliografía 

https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-20-04-es

