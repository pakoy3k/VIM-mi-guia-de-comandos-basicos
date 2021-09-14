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
| :w           | Graba los cambios realizados en el archivo               |
| :w 'archivo' | Graba los cambios en otro 'archivo'                      |
| :q           | Sale de Vim sin guardar los cambios                      |
| :q! , ZQ     | Forza el cierre de Vim sin guardar cambios               |
| :wq, x!, ZZ  | Guarda los cambios y cierra la session de vim            |
| :e {archivo} | Edita el archivo actual o el especificado                |

## Navegacion

| Comando                  | Descripcion                                                                                                                |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------- |
| e                        | Posiciona al final de la palabra                                                                                           |
| w                        | Posiciona en la siguiente palabra al inicio                                                                                |
| 3w                       | Posiciona a 3 palabras                                                                                                     |
| b                        | Posiciona a la palabra anterior                                                                                            |
| W                        | Posiciona a siguiente cadena despues de un espacio                                                                         |
| H                        | Posiciona cursor a la parte superior de la pantalla                                                                        |
| L                        | Posiciona cursor a la parte inferior de la pantalla                                                                        |
| M                        | Posiciona cursor a la parte media de la pantalla                                                                           |
| G                        | Lleva al final del archivo                                                                                                 |
| 0                        | Posiciona al inicio de la linea                                                                                            |
| \$                       | Posiciona al final de la linea                                                                                             |
| A                        | Posiciona al final de la linea y activa el modo insertar                                                                   |
| a                        | Posiciona en el siguiente caracter y activa el modo insertar                                                               |
| Crtl+B                   | Similar a Repag                                                                                                            |
| Ctrl+F                   | Similar a Avpag                                                                                                            |
| :n    , :bn              | Nos envia al archivo siguiente                                                                                             |
| :N    , :bp              | Nos envia al archivo previo                                                                                                |
| :buffers                 | Lista los archivos abiertos                                                                                                |
| :ls                      | Lista los archivos abiertos                                                                                                |
| :buffer #                | Abre el archivo indicado con #                                                                                             |
| :b \$string              | Muestra el archivo del buffer que contenta \$string                                                                        |
| :b #numero               | Muestra el archivo con el numero # del buffer                                                                              |
| :bd                      | Cierra el archivo actual del buffer, si no ha sido guardado se agreda :bd!                                                 |
| :new                     | Crear un archivo nuevo en el buffer                                                                                        |
| :open 'Archivo'          | Abre el archivo indicado                                                                                                   |
| :e 'Archivo'             | Inserta el contenido de un fichero en la línea donde se encuentra el cursor                                                |
| :r 'Archivo'             | Inserta el contenido de un fichero en la línea siguiente de la posicion actual                                             |
| :r! CMD                  | Ejecuta el commando indicado CMD y el resultado lo inserta al archivo                                                      |
| :! CMD                   | Ejecuta el comando CMD y lo despliega en pantalla                                                                          |
| DIVIDE PANTALLA          | :split,vsplit,vertical,leftabove,rightbelow,sfind,sb                                                                       |
| DIVIDE PANTALLA          | :vertical sb 3, vertical rigthbelow sfind file.txt, rightbelow sfind file.txt                                              |
| DIVIDE PANTALLA          | Use Ctrl-W followed by one of the hjkl movement keys.                                                                      |
| CORTA,PEGAR REGISTRO     | Vim puede tener mas de un buffer para el clipboard, "adaw corta una palabra y la guarda en el buffer a "ap pega            |
|                          | "bdaw corta palabra "bp pega lo que esta en clipboard b                                                                    |
| ^                        | Move to the first non-blank character of the line.                                                                         |
| )                        | Jump forward one sentence.                                                                                                 |
| (                        | Jump backward one sentence.                                                                                                |
| }                        | Jump forward one paragraph.                                                                                                |
| {                        | Jump backward one paragraph.                                                                                               |
| j                        | Jump forward one line.                                                                                                     |
| 10j                      | Jump forward 10 lines                                                                                                      |
| k                        | Jump backward one line.                                                                                                    |
| 10k                      | Jump backward 10 lines.                                                                                                    |
| H                        | Jump to the top of the screen.                                                                                             |
| M                        | Jump to the middle of the screen.                                                                                          |
| L                        | Jump to the bottom of the screen.                                                                                          |
| 10<PageUp> or 10<CTRL-B> | Move 10 pages up.                                                                                                          |
| 5<PageDown> or 5<CTRL-F> | Move 5 pages down.                                                                                                         |
| G                        | Jump to end of file.                                                                                                       |
| g                        | Jump x screen lines in direction (up,down,left,right) - useful for moving through a long, wrapped line of text.            |
| 1G                       | Jump to beginning of file (same as gg).                                                                                    |
| 50G                      | Jump to line 50.                                                                                                           |
| mx                       | Set mark x at the current cursor position.                                                                                 |
| 'x                       | Jump to the beginning of the line of mark x.                                                                               |
| `x                       | Jump to the cursor position of mark x.                                                                                     |
| ' '                      | Return to the line where the cursor was before the latest jump.                                                            |
| ``                       | Return to the cursor position before the latest jump (undo the jump).                                                      |
| '.                       | Jump to the last-changed line.                                                                                             |
| %                        | Jump to corresponding item, e.g. from an open brace to its matching closing brace. See Moving to matching braces for more. |
| \|                       | Jump to the 1st column of the current line.                                                                                |
| 42 \|                    | Jump to the 42nd column of the current line.                                                                               |
| g;                       | Jump to the place of last edit. Can be quite helpful while debugging or editing files.                                     |
| >>                       | Indent line by shiftwidth spaces                                                                                           |
| <<                       | De-indent line by shiftwidth spaces                                                                                        |
| 5>>                      | Indent 5 lines                                                                                                             |
| 5==                      | Re-indent 5 lines                                                                                                          |
| >%                       | Increase indent of a braced or bracketed block (place cursor on brace first)                                               |
| =%                       | Reindent a braced or bracketed block (cursor on brace)                                                                     |
| <%                       | Decrease indent of a braced or bracketed block (cursor on brace)                                                           |
| ]p                       | Paste text, aligning indentation with surroundings                                                                         |
| =i{                      | Re-indent the 'inner block', i.e. the contents of the block                                                                |
| =a{                      | Re-indent 'a block', i.e. block and containing braces                                                                      |
| =2a{                     | Re-indent '2 blocks', i.e. this block and containing block                                                                 |
| >i{                      | Increase inner block indent                                                                                                |
| <i{                      | Decrease inner block indent                                                                                                |


## Atajos y funciones necesarias al dia dia


**Dentro de tu archivo de .vimrc**


`> fichero ~.vimrc


| Configuracion                                                                                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| set number : Muestra la numeración de las líneas de texto del fichero.                                                                                                                                          |
| syntax on : Añade colores a diferentes componentes de texto haciendo la lectura de ficheros de configuración o archivos con código mucho más fácil.                                                             |
| set tabstop=4 : Configura la tabulación a 4 espacios, ya que por defecto viene establecida a 8.                                                                                                                 |
| set autoindent : Si una palabra no tiene cabida en la línea, en lugar de un guión al final de la línea, dicho guión se encontrará al inicio de la siguiente línea, para facilitar el salto de una línea a otra. |

---

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

