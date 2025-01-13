**When text is visually selected, press : to enter a command.**

### press v or V to visual mode

- edit source

> :'<,'>s/red/green/g

replace all red with green in all lines of the last visual selection

`:s/\%Vus/az/g`

> /%V 

search into visual selection





#Insert text into multiple lines at once


Press Ctrl + v to enter into visual block mode.

Use ↑ / ↓ / j / k to select multiple lines.

Press Shift + i and start typing what you want.

After you press Esc, the text will be inserted into all the lines you selected.

Remember that Ctrl+c is not 100% equivalent to Esc and will not work in this situation!