![image](https://github.com/user-attachments/assets/69d6a0d6-0deb-42ac-90bc-6b7163f60cbd)
Servicio de Red e Internet

Volodimir Yarmash Yarmash


Vamos a instalar un servidor web interno para un instituto. Se Pide:
-Instalación del servidor web apache. Usaremos dos dominios mediante el archivo hosts: centro.intranet y departamentos.centro.intranet. El primero servirá el contenido mediante wordpress y el segundo una aplicación en python
Para instalar Apache2, necesitamos usar el comando sudo apt update para comprobar si hay alguna actualización importante.
Ahora introducimos sudo apt install apache2 y esperamos a que se instale.
![image](https://github.com/user-attachments/assets/c588e2cb-b36f-4eae-9194-5bd8200d4f0d)
Agregamos apache en el firewall para que no ocurran problemas.
![image](https://github.com/user-attachments/assets/c823c63f-1c84-46fb-a8a0-1a7601fec754)
Comprobamos el status de Apache2 con el comando sudo systemctl status apache2
![image](https://github.com/user-attachments/assets/32039b3b-e486-455e-be14-46b5c2626bf4)
Modificamos el fichero hosts
introducimos sudo  nano /etc/hosts  e introducimos los dominios de esta forma: 
![image](https://github.com/user-attachments/assets/6edd42ab-fcda-4a02-938e-37d70c6fd191)
