# VIM mi guia de comandos basicos necesarios y un poco mas

Para iniciar a utilizar vim podremos obtar por una de estas opciones:
	
>\>vim

>\>vim archivo.txt

>\>vim archivo1.txt archivo2.log archivo3.html ... etc 
	

Ingresando de este modo ya nos encontramos en modo comando, de no ser asi para entrar al modo comando únicamente deberemos pulsar ‘Esc’ .
En la siguiente tabla se presentan dos tipos de comandos los que requieren iniciar con ':' y los que solo presionando la tecla indicada.


## Basicos para iniciar

| Comando      | Descripcion                                              |
| ------------ | -------------------------------------------------------- |
| i            | Activa modo edicion en la posicion actual                |
| I            | Activa modo edicion al inicio de la linea                |
| O            | Agrega una linea en blanco, posterior a la linea actual  |
| o            | Agrega una linea en blanco, despues a la linea actual    |
| r            | Sobrescribe el caracter actual                           |
| R            | Sobrescribe desde la posicion actual                     |
| x            | Equivalente a tecla [Delete]                             |
| X            | Equivalente a tecla [Backspace]                          |
| y            | Copia lo seleccionado hasta donde esta el cursor         |
| d            | Corta lo seleccionado hasta donde esta el cursor         |
| dd           | Se corta y se envia al portapapeles la linea actual      |
| D            | Corta desde posicion actual hasta el fin de linea        |
| yy,Y         | Copia la linea actual o seleccionado                     |
| y#           | Copia caracteres de la posicion actual hasta # ingresado |
| p            | Pega en posicionActual+1 lo que esta en el portapapeles  |
| P            | Pega en posicionActual lo que esta en el portapapeles    |
| .            | Repite ultimo comando                                    |
| u            | Deshace el ultimo comando                                |
| U            | Deshace el ultimo comando aplicado en la posicion actual |
| :/cadena     | Busca la "cadena" en el archivo                          |
| n            | Busca la siguiente coincidencia de la busqueda           |
| N            | Busca la anterior coincidencia de la busqueda            |
|              |                                                          |
| V            | Selecciona por lineas                                    |
| v            | Selecciona un rango de texto                             |
| ctrl-v       | Selecciona por columnas                                  |
| gv           | Reseleccionar texto                                      |



## Ex commands

| Comando        | Descripcion                                              |
| -------------- | -------------------------------------------------------- |
| :w             | Graba los cambios realizados en el archivo               |
| :w 'archivo'   | Graba los cambios en otro 'archivo'                      |
| :q             | Sale de Vim sin guardar los cambios                      |
| :q! , ZQ       | Forza el cierre de Vim sin guardar cambios               |
| :wq, x!, ZZ    | Guarda los cambios y cierra la session de vim            |
| :e {archivo}   | Edita el archivo actual o el especificado                |
| :wa 		     | write all changed buffers  |
| :wall          | write all changed buffers  |
| :wqa           | write all chaned buffer and exit |
| :xa            | write all chaned buffer and exit |
| :w !sudo tee % | save usign root permission |
|  |  |
|  |  |
|  |  |




## Atajos y funciones necesarias al dia dia


**Buscar y Reemplazar**
`

	> :%s/sustituida/sustituta/gc


| Parametros  | Descripcion                                                                                                                                    |
| ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| %s          | Especifica el rango que abarcará la búsqueda. En nuestro caso % significa que se buscará desde la primera hasta la última línea del documento. |
| /sustituida | Es el término que sustituiremos.                                                                                                               |
| /sustituta/ | Es el término que aplicaremos en su lugar.                                                                                                     |
| g           | Indica que la sustitución se realizará con toda coincidencia de búsqueda.                                                                      |
| c           | Solicitará confirmación de sustitución cada vez que se encuentre la palabra a buscar.                                                          |
| y           | Confirmamos la acción                                                                                                                          |
| n           | Saltamos esta coincidencia con la búsqueda sin sustituirla y pasamos a la siguiente                                                            |
| a           | Confirmamos la acción para esta y todas las siguientes coincidencias                                                                           |
| q           | Dejamos de sustituir en la búsqueda                                                                                                            |
| l           | Confirmamos la sustitución y paramos la búsqueda saliendo de nuevo al modo editor                                                              |
| Ctrl+e      | Avanzamos un poco hacia abajo en el documento para localizar el contexto de la coincidencia                                                    |
| Ctrl+y      | Retrocedemos un poco en el texto para localizar el contexto de la coincidencia.                                                                |

---

**Archivos**
`

	> :buffers


| Informacion sobre los archivos                                                                                                                                          |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| # : Nos indica que el fichero ha sido abierto y que hemos pasado por él, aunque ahora no nos encontremos en el mismo, por lo que se encuentra abierto en segundo plano. |
| %a : Indica que es el archivo en el que nos encontramos y está siendo editado.                                                                                          |
| Un espacio en blanco : Indica que el fichero ha sido abierto, pero aún no hemos pasado por dicho archivo.                                                               |

---

**Extras**
`

	> :%!python -m json.tool

