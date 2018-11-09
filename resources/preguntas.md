## Preguntas:

####01-Preguntas -  Practica GIT:

1. ¿Qué es y para qué sirve GIT?
    Es una herramienta para desarrolladores software que les permite gestionar, administrar y versionar el codigo. Tambien se puede almacenarlo en distintos repositorios en la nube y acceder a ellos mediante una autenticación.

2. ¿Que es Github o bitbucket?
    Son un servicio en la nube, que se encuentra basado en GIT y nos permite almacenar nuestro codigo generado en sus servidores y salvaguardarlo, y tambien nos permite accederlo desde cualquier ubicacion con conexion a internet.

3. ¿Qué es y para qué sirve el SSH?
    El SSH significa Secure Shell, el cual es un protocolo de administración de servidores remotos. Este protocolo crea una conexion segura entre  una maquina y un servidor remoto.y
    
---

4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente?¿Por qué?
    No podré conectar al servidor remoto ya que tengo que generar el SSH necesario. Aunque no es necesario generar el SSH nuevamente en la nueva PC ya que se puede reutilizar el SSH que se generó en la otra PC, ya que el SSH es un archivo portable.
 
5. ¿Qué es markdown? ¿Para qué sirve?
    Es un lenguaje de marcado ligero o de alto nivel que permite mejorar la legibilidad y visibilidad del texto en un interpretador de codigo.

6. ¿Cómo inicializo y configuro un proyecto con git?
    Podemos inicializar un proyecto ajecutando el comando "git init" o clonandolo desde una repositorio remoto  con "git clone <repositorio>".
    Y para configurar mi proyecto con git se utiliza el comando "git config [parametros]"


####01-Preguntas -  Practica DOCKER MAKEFILE:

1. ¿Qué es bash? ¿Qué significa?
    Es un interpretador de lenguaje shell script. Bourne-again shell

2. ¿Cómo ejecuto un archivo bash?
    Se ejecuta con el comando bash, sh o ./ seguido del archivo a ejecutar.
    bash example.sh
    sh example.sh
    ./examen.sh     Siempre y cuando el archivo tenga permisos de ejecución. 
    sh, bash o zsh son los interpretes del lenguaje shell script
    La ruta del programa a ejecutar es la primera linea del archivo. ej: #!/bin/python

3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
    Igualmente podrás ejecutar el archivo siempre y cuando tenga permisos de ejecución.

4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
    Si, por otro interprete que se haya instalado en la máquina. Indicando el path donde esta instalado el interpretador.
    #!/bin/bash
    #!/usr/bin/env python
    #!/usr/bin/perl

5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?
    En Docker CLI, se envia por medio de una variable que se define después de el entrypoint (punto de entrada).
    En docker-compose crear un archivo .env donde este la variable a utilizar dentro del docker-compose.yml y ejecutar los siguientes comandos:
    set -a
    source .env     Vincula el archivo .env hacia el docker-compose
    docker-compose up -d     Ejecuta el container con la variable

6. ¿Para qué sirve el archivo `Makefile`?
    Para simplificar la ejecución de comandos pudiendo  ejecutar varios comandos en uno.

7. ¿Qué es un `target` en `Makefile`?
    Son las intrucciones que se ejecutan los comandos. 