# Pon en marcha el servidor Apache y lleva a cabo los siguientes cambios en el archivo de configuración.

# Se recomienda leer previamente el siguiente documento:
https://httpd.apache.org/docs/2.4/getting-started.html

# La distribución de los archivos de configuración puedes consultarla aquí:
http://wiki.apache.org/httpd/DistrosDefaultLayout#Win32_.28Apache_httpd_2.2.29

# Si tienes problemas con Apache consulta el siguiente enlace:
https://docs.bluehosting.cl/troubleshooting/servidores/guia-de-solucion-de-problemas-comunes-de-apache.html

Apache utilizará el puerto 81 además del 80
	Para entrar en configuracion y comprobar el puerto, tenemos que entrer por la ruta /etc/apache2/sites-available
 	introducimos cat 000-default.conf y comprobamos tanto el puerto como la ruta
  ![image](https://github.com/user-attachments/assets/4530dcca-39dc-4a7b-bdd8-700ea69a488f)
  

Añadir el dominio “marisma.intranet” en el fichero “hosts”
	
Cambia la directiva “ServerTokens” para mostrar el nombre del producto.
	
Haz que se visualice el pie de página de Apache en tu navegador
	
Crea un directorio “prueba” y otro directorio “prueba2”. Incluye un par de páginas en cada una de ellas.
	
Redirecciona el contenido de la carpeta “prueba” hacia “prueba2”
	
Es posible redireccionar tan solo una página en lugar de toda la carpeta. Pruébalo.
	
Usa la directiva userdir
	
Usa la directiva alias para redireccionar a una carpeta dentro del directorio de usuario.
	
# ¿Para qué sirve la directiva Options y dónde aparece. Comprueba si apache indexa los directorios. Si es así, ¿cómo lo desactivamos?

Nota: Para ver la respuesta http podemos usar cURL
https://curl.haxx.se/docs/httpscripting.html
https://www.rosehosting.com/blog/curl-command-examples/
Nota: Si tienes que instalar un módulo en Apache utiliza a2enmod
sudo a2enmod userdir


# Trabajando con scripts  (Debes publicarlos en Github)
Crea un script para cada uno de los siguientes problemas
Crea un script que añada un puerto de escucha en el fichero de configuración de Apache. El puerto se recibirá como parámetro en la llamada y se comprobará que no esté ya presente en el fichero de configuración.
Crea un script que añada un nombre de dominio y una ip al fichero host. Debemos comprobar que no existe dicho dominio
Crea un script que nos permita crear una página web con un título, una cabecera y un mensaje

# Se aconseja leer previamente:
https://docs.google.com/document/d/1gMU6-KWNP9MstzG44DgQMRgzxMOgVRb6MqEL1PKJ2zo/edit

