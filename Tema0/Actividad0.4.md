# Busca información sobre el comando curl y muestra al menos cinco ejemplos de uso

https://curl.se/docs/manual.html

Es un comando disponible en la mayoría de los sistemas basados ​​en Unix. Es una abreviatura de “Client URL”. Los comandos de cURL están diseñados para funcionar como una forma de verificar la conectividad a las URL y como una gran herramienta para transferir datos.
Permite transferir datos hacia o desde un servidor sin interacción del usuario utilizando la biblioteca libcurl. cURL también se puede utilizar para solucionar problemas de conexión.

curl https://www.google.com
Podemos obtener el contenido de la página.
![image](https://github.com/user-attachments/assets/b5d7a205-c43c-41f4-b9d8-c815dfa6c8b2)

curl -I https://www.google.com
Obtenemos la informacion del cabezado de la página.
![image](https://github.com/user-attachments/assets/028fab0b-4ac5-48ef-956a-2ea98218b2f9)

curl https://www.google.com -v
Obtenemos información de las peticiones de http
![image](https://github.com/user-attachments/assets/22a18099-c979-42ab-b3d2-c989a3bfb63f)

curl -o (nombre del archivo) https://www.google.com
Guarda la información en un erchivo
![image](https://github.com/user-attachments/assets/b420ddb6-9837-4142-a6d6-62e507fcf713)
![image](https://github.com/user-attachments/assets/8804fe11-f9bd-4cae-8048-dec2940cf282)

curl -O (URL de la imagen)
Descargar imagen
![image](https://github.com/user-attachments/assets/5648e7d5-cd4e-45b2-adc5-08368e7c0ec7)


