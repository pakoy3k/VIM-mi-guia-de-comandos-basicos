|   command             | action                          |
| -----------           | ------------------------------------- |
|     e                 | Move to the end of a word |
|     w                 | Move forward to the beginning of a word.            |
|     3w                | Move forward three words                |
|     W                 | Move forward a WORD (any non-whitespace characters)                |
|     b                 | Move backward to the beginning of a word                |
|     3b                | Move backward three words                |
|     $                 | Move to the end of the line               |
|     0                 | Move to the beginning of the line               |
|     ^                 | Move to the first non-blank character of the line              |
|     )                 | Jump forward one sentence              |
|     (                 | Jump backward one sentence              |
|     }                 | Jump forward one paragraph.                |
|     {                 | Jump backward one paragraph                |
|     j                 | Jump forward one line                |
|     10j               | Jump forward 10 lines                |
|     k                 | Jump backward one line                |
|     10k               | Jump backward 10 lines                |
|     H                 | Jump to the top of the screen                |
|     M                 | Jump to the middle of the screen                |
|     L                 | Jump to the bottom of the screen                |
|10<PageUp>             | or 10<CTRL-B>   Move 10 pages up                 |
|10<PageUp>             |or 10<CTRL-B>   Move 5 pages down          |                 
|     G                 | Jump to end of file               |
|     g                 | Jump x screen lines in direction (up,down,left,right) - useful for moving through a long, wrapped line of text.               |
|     1G                | Jump to beginning of file (same as gg)              |
|     50G               | Jump to line 50.              |
|     mx                | Set mark x at the current cursor position              |
|     'x                | Jump to the beginning of the line of mark               |
|     `x                | Jump to the cursor position of mark x.                |
|      "                | Return to the line where the cursor was before the latest jump                |
|      ``               | Return to the cursor position before the latest jump (undo the jump)               |
|     '.                | Jump to the last-changed line               |
|      %                | Jump to corresponding item, e.g. from an open brace to its matching closing brace.                 |
|      \|               | Jump to the 1st column of the current line.               |
|      42\|             | Jump to the 42nd column of the current line               |
|      g;               | Jump to the place of last edit. Can be quite helpful while debugging or editing files.              |
|      >>               | Indent line by shiftwidth spaces                                                                                           |
|      <<               | De-indent line by shiftwidth spaces                                                                                        |
|      5>>              | Indent 5 lines                                                                                                             |
|      5==              | Re-indent 5 lines                                                                                                          |
|      >%               | Increase indent of a braced or bracketed block (place cursor on brace first)                                               |
|      =%               | Reindent a braced or bracketed block (cursor on brace)                                                                     |
|      <%               | Decrease indent of a braced or bracketed block (cursor on brace)                                                           |
|      ]p               | Paste text, aligning indentation with surroundings                                                                         |
|      =i{              | Re-indent the 'inner block', i.e. the contents of the block                                                                |
|      =a{              | Re-indent 'a block', i.e. block and containing braces                                                                      |
|      =2a{             | Re-indent '2 blocks', i.e. this block and containing block                                                                 |
|      >i{              | Increase inner block indent                                                                                                |
|      <i{              | Decrease inner block indent                                                                                                |
|      A                | Posiciona al final de la linea y activa el modo insertar                                                                   |
|      a                | Posiciona en el siguiente caracter y activa el modo insertar                                                               |
|      Crtl+B           | Similar a Repag                                                                                                            |
|      Ctrl+F           | Similar a Avpag                                                                                                            |
|      :n    , :bn      | Nos envia al archivo siguiente                                                                                             |
|      :N    , :bp      | Nos envia al archivo previo                                                                                                |
|      :buffers         | Lista los archivos abiertos                                                                                                |
|      :ls              | Lista los archivos abiertos                                                                                                |
|      :buffer #        | Abre el archivo indicado con #                                                                                             |
|      :b \$string      | Muestra el archivo del buffer que contenta \$string                                                                        |
|      :b #numero       | Muestra el archivo con el numero # del buffer                                                                              |
|      :bd              | Cierra el archivo actual del buffer, si no ha sido guardado se agreda :bd!                                                 |
|      :new             | Crear un archivo nuevo en el buffer                                                                                        |
|      :open 'Archivo'  | Abre el archivo indicado                                                                                                   |
|      :e 'Archivo'     | Inserta el contenido de un fichero en la línea donde se encuentra el cursor                                                |
|      :r 'Archivo'     | Inserta el contenido de un fichero en la línea siguiente de la posicion actual                                             |
|      :r! CMD          | Ejecuta el commando indicado CMD y el resultado lo inserta al archivo                                                      |
|      :! CMD           | Ejecuta el comando CMD y lo despliega en |

To mark a block of lines and indent it, V j j > to indent three lines. To indent a curly-braces block, put your cursor on one of the curly braces and use >% or from anywhere inside block use >iB.

If you’re copying blocks of text around and need to align the indent of a block in its new location, use ] p instead of just p. This aligns the pasted block with the surrounding text.
