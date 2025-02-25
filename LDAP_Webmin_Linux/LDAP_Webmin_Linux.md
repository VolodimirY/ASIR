![ref1]


Administración de Sistemas Operativos



Volodimir Yarmash Yarmash























![ref1]

Índice

[**1. Instala Ldap con Webmin en un servidor Linux. Comprueba la correcta instalación de Ldap.	3**](#_lb5fdt28l8bs)**

[**2. Configura Ldap para crear un dominio utilizando Webmin.	4**](#_zd7src33f25)

[**3. Con Webmin, crea 2 usuarios y 2 unidades organizativas en el dominio y  verifica que han sido creado correctamente.	6**](#_kvqx9vl87t2d)

[**4. crea un grupo y añade los usuarios creados anteriormente a este grupo. Crea un nuevo grupo y añade uno de los usuarios a este grupo.	10**](#_nnzk40v0ms0i)

[**5. Comprueba desde la consola los cambios que se han hecho en los ejercicios anteriores.	11**](#_sxlimo6916zg)






















![ref1]

# <a name="_lb5fdt28l8bs"></a>1. Instala Ldap con Webmin en un servidor Linux. Comprueba la correcta instalación de Ldap.
Para empezar, tenemos que crear un Alias en el dns.

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.002.png)

En el listado de UNUSED MODULES, encontramos LDAP server y lo descargamos

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.003.png)
# <a name="_zd7src33f25"></a>2. Configura Ldap para crear un dominio utilizando Webmin.
Introducimos la configuración y aplicamos:

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.004.png)

Vamos a instalar la base de datos, en el panel de LDAP buscamos este botón;

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.005.png)

Entramos y descargamos el Perl module

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.006.png)

Después de la instalación, regresamos para comprobar si todo ha ido bien. Deberia de aparecer esto

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.007.png)

Salimos de “browse database” y entramos a “create tree”

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.008.png)

Seleccionamos la opción de DNS y creamos

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.009.png)

Entramos de nuevo a la base de datos y debemos de tener algo parecido:

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.010.png)

# <a name="_kvqx9vl87t2d"></a>3. Con Webmin, crea 2 usuarios y 2 unidades organizativas en el dominio y  verifica que han sido creado correctamente.
Para crear usuarios y demás, necesitamos acceder a “LDSP users and groups” en el apartado de módulos sin usar

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.011.png)

Arriba a la izquierda, pulsamos el engranaje y nos pasa a este panel de configuración. Lo rellenamos igual:

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.012.png)

Y nos aparece la opción de crear un usuario LDAP, lo pulsamos:

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.013.png)

Lo configuramos de esta manera:

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.014.png)

Y nos aseguramos que es miembro de user, pulsamos create

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.015.png)

Y repetimos de nuevo para tener 2 users:

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.016.png)


Ahora tenemos que crear la Unidades Organizativas

Para ello no tenemos un módulo aparte, está integrado en ldap server

Entramos en “Browse database” y “Add new sub-object”

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.017.png)

Establecemos el tipo de objeto a OU(organizationalUnit) y su nombre, también tenemos

que especificar la clase del objeto. Damos click en crear.

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.018.png)

Este es el resultado

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.019.png)
# <a name="_nnzk40v0ms0i"></a>4. crea un grupo y añade los usuarios creados anteriormente a este grupo. Crea un nuevo grupo y añade uno de los usuarios a este grupo.
Para crear un grupo, nos situamos en el papel de los Un-used modules y pinchamos en “Ldap users and groups”, añadimos un grupo

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.020.png)

En la tabla de miembros escogemos al primer usuario y le creamos el grupo 1. Y despues con el segundo

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.021.png)

Debería de quedar así

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.022.png)


# <a name="_sxlimo6916zg"></a>5. Comprueba desde la consola los cambios que se han hecho en los ejercicios anteriores.
Para mostrar todos los cambios realizados en ldap usamos el comando “sudo slapcat”, como podemos ver aparecen tanto los grupos como los usuarios y las unidades organizativas.

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.023.png)

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.024.png)

![](Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.025.png)

[ref1]: Aspose.Words.b7b32630-8c89-4a64-8943-ce3e0bbb43ec.001.png
