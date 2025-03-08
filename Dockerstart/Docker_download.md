![ref1]


Servicio de Red e Internet



Volodimir Yarmash Yarmash























![ref1]

Índice

[**1. Instalación Docker	3**](#_811s03xg1t3a)**






























![ref1]

1. # <a name="_811s03xg1t3a"></a>Instalación Docker
Para instalar docker, vamos a asegurar que no tenemos ninguna versión previa, para que no nos generen errores.

sudo apt-get remove docker docker-engine docker.io containerd runc

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.002.png)

Vamos a instalar el Repositorio de Docker para dentro instalar docker.

$ sudo apt-get update

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb\_release -cs) stable"

E instalamos docker:

$ sudo apt-get install docker-ce docker-ce-cli containerd.io

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.003.png)

Comprobamos con el comando 

sudo systemctl status  docker

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.004.png)

Vamos a arrancar la imagen de hello-world para finalmente comprobar si todo está en orden.

sudo docker run hello-world

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.005.png)

Comandos importantes:

docker - Te muestra una lista de todos los comandos disponibles.

sudo docker version - te muestra la versión instalada de Docker

sudo docker info - te muestra la información de docker, como sus rutas y configuración.

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.006.png)

Por ejemplo, vamos a instalar una imagen de Docker llamada CentOS 7. Con este comando:

sudo docker search centos

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.007.png)

Podemos listar todas nuestras imágenes con:

sudo docker images

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.008.png)

Y finalmente borrar imagen con el comando:

sudo docker rmi centos

![](Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.009.png)

[ref1]: Aspose.Words.f4738e76-39f6-4b2c-92db-7902e82250df.001.png
