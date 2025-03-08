![ref1]


Servicio de Red e Internet



Volodimir Yarmash Yarmash





















Índice

[**Lee los siguientes artículos	3**](#_b9hn2cw6aavl)**

[**Ejecuta la imagen "hello-world"	3**](#_2znu2rbiammz)

[**Muestra las imágenes Docker instaladas	4**](#_j108mzprpnqx)

[**Muestra los contenedores Docker	5**](#_t26ozvbb8zlp)

[**Edita el fichero Dockerfile	5**](#_7tcqxeldky5z)

[**Construye el contenedor	6**](#_d2mfpyupn198)

[**Ejecútalo	6**](#_exixaaamyzgf)

[**Create una cuenta en hub.docker.com	7**](#_1tcnnk2sh174)

[**Publícalo	8**](#_d6ohpoewxusl)





















# <a name="_b9hn2cw6aavl"></a>Lee los siguientes artículos
<https://docs.docker.com/get-started/>

<https://docs.docker.com/get-started/part2/>

# <a name="_2znu2rbiammz"></a>Ejecuta la imagen "hello-world"
Vamos a arrancar la imagen de hello-world para finalmente comprobar si todo está en orden.

`sudo docker run hello-world`

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.002.png)

Comandos importantes:

docker - Te muestra una lista de todos los comandos disponibles.

sudo docker version - te muestra la versión instalada de Docker

sudo docker info - te muestra la información de docker, como sus rutas y configuración.

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.003.png)

Por ejemplo, vamos a instalar una imagen de Docker llamada CentOS 7. Con este comando:

sudo docker search centos

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.004.png)

# <a name="_j108mzprpnqx"></a>Muestra las imágenes Docker instaladas
Podemos listar todas nuestras imágenes con:

sudo docker images

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.005.png)

Y finalmente borrar imagen con el comando:

sudo docker rmi centos

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.006.png)

# <a name="_t26ozvbb8zlp"></a>Muestra los contenedores Docker
En caso de que queramos ver todos los contenedores que se han ejecutado en nuestro sistema, podemos utilizar la siguiente orden:

sudo docker ps -a

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.007.png)
# <a name="_7tcqxeldky5z"></a>Edita el fichero Dockerfile
Para editar el archivo Dockerfile, podemos utilizar cualquier editor de texto, aqui emplearemos nano con el siguiente comando:

sudo nano (ruta)/Dockerfile

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.008.png)
# <a name="_d2mfpyupn198"></a>Construye el contenedor
![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.009.png)

Entramos a la carpeta e introducimos este comando:

sudo docker build -t (nombre de imagen) .

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.010.png)

# <a name="_exixaaamyzgf"></a>Ejecútalo
Vamos a ejecutar la imagen hello world con este comando:

sudo docker run -d -p 127.0.0.1:3000:3000 getting-started

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.011.png)

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.012.png)
# <a name="_1tcnnk2sh174"></a>Create una cuenta en hub.docker.com
Entramos en la pagina oficial de DOCKER HUB

Y nos registramos

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.013.png)

Para entrar a docker introducimos el siguiente comando:

sudo docker login -u (usuario)

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.014.png)
# <a name="_d6ohpoewxusl"></a>Publícalo
Con todo ello , ya podemos publicar nuestra imagen en Dockerhub con el siguiente comando

sudo sudo docker push volodimiry/getting-started

![](Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.015.png)

[ref1]: Aspose.Words.4fe7be42-cd15-4354-84d9-a9af89f3e981.001.png
