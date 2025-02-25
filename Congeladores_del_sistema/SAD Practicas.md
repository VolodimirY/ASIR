![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.001.png)


Seguridad y Alta Disponibilidad



Volodimir Yarmash Yarmash
























Índice

[**Objetivos:	3**](#_tyvytlmdjdx3)**

[**Teoría Congeladores	3**](#_7ccgtzy7tlx9)

[**Qué hay que hacer:	3**](#_s4qfeav51az6)

[**1. Funciones del programa (¿para qué sirve?).	3**](#_8mxvt6k2bqsr)

[**2. Instalación paso a paso del programa (incluir capturas)	4**](#_ylr7sda3k00k)

[**3. Configuración.	6**](#_itj74s638t6e)

[**4. Ejemplo de uso paso a paso (incluir capturas). En este apartado hay que comprobar que, efectivamente, después de reiniciar el sistema ha borrado toda la información y está como al principio	6**](#_k90imfjvegkn)

[**5. Explica cómo podrías evitar que al reiniciar se perdieran las actualizaciones del antivirus. Instálate antes uno.	8**](#_btp5innukrts)





























# <a name="_tyvytlmdjdx3"></a>Objetivos:
• Conocer la técnica de congelación del sistema operativo junto con sus diferentes

funcionalidades y sus posibilidades de uso.

• Instalar, configurar y usar programas para la congelación del sistema.

# <a name="_7ccgtzy7tlx9"></a>Teoría Congeladores
Los programas llamados congeladores del sistema instalados en un sistema operativo

permiten que los usuarios realicen cambios en la configuración, instalen software,

recuerden el historial de navegación, las cookies o contraseñas, ... pero al reiniciar el

equipo todos estos cambios desaparecen y el sistema vuelve al punto original

configurado. Evidentemente, los cambios que los usuarios tienen permitidos realizar se

controlan con directivas de grupos, listas de control de acceso y permisos.

Este tipo de software se instala en ordenadores que son usados por muchas personas,

que utilizan dispositivos extraíbles, descargan software de dudosas fuentes, ... como las

aulas de los centros educativos, cibercafés, bibliotecas públicas, ...

Pero ¿qué pasa con las actualizaciones del sistema o del antivirus? Ésas no interesan

perderlas una vez instaladas. ¿Y si deseamos instalar software y que no se borre al

reiniciar el equipo? Pues dependiendo del software utilizado, algunos permiten que

estos cambios sean permanentes y otros no.

Ejemplos de congeladores:

• DeepFreeze

• CleanSlate

• DriveShield

• Shadow Defender

• Custodius

• Windows Steady State

# <a name="_s4qfeav51az6"></a>Qué hay que hacer:
Vamos a realizar un estudio de una de las aplicaciones anteriores: ShadowDefender. Puedes

descargar una versión de prueba desde aquí:

https://www.shadowdefender.com/

Se trata de que realices un tutorial en PDF donde aparezcan los siguientes puntos:
# <a name="_8mxvt6k2bqsr"></a>1. Funciones del programa (¿para qué sirve?).
El programa sirve para eliminar la sesión del usuario actual una vez se cierre la sesión

(normalmente), aunque también puede configurarse para que los datos se borren cuando

se realice otra acción.

# <a name="_ylr7sda3k00k"></a>2. Instalación paso a paso del programa (incluir capturas)
Entramos en la página oficial y descargamos el software:

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.002.png)

Introducimos nuestro nombre

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.003.png)

Llegados hasta el final y pulsamos “install”

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.004.png)

# <a name="_itj74s638t6e"></a>3. Configuración.
Para configurarlo, nos dirigimos al apartado “Mode Setting” y seleccionamos el volumen

que queremos configurar para que el congelador elimine los datos una vez se cierre la

sesión del usuario. También se pueden configurar exclusiones de carpetas, ficheros,

registros o programas.

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.005.png)
# <a name="_k90imfjvegkn"></a>4. Ejemplo de uso paso a paso (incluir capturas). En este apartado hay que comprobar que, efectivamente, después de reiniciar el sistema ha borrado toda la información y está como al principio
Entramos al modo Shadow y creamos una carpeta con contenido.

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.006.png)

Hacemos restart:

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.007.png)

Al reiniciarse el equipo, se ha borrado el contenido que habíamos creado.

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.008.png)

# <a name="_btp5innukrts"></a>5. Explica cómo podrías evitar que al reiniciar se perdieran las actualizaciones del antivirus. Instálate antes uno.
Para que al reiniciar no se pierdan, vamos al apartado de Registry Exclusion List y le

damos a añadir y seleccionamos el antivirus.

![](Aspose.Words.fa796a2e-5acb-4b27-a432-ac8f43d05018.009.png)

Y con esto estaría listo.

