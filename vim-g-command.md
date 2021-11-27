# Go to definition using g

**Place the cursor on any variable in your program.**

- gd will take you to the local declaration.
- gD will take you to the global declaration.
- g* search for the word under the cursor (like *, but g* on 'rain' will find words like 'rainbow').
- g# same as g* but in backward direction.
- gg goes to the first line in the buffer (or provide a count before the command for a specific line).
- gv to reselect the last visual selection
- gf goto a file under the cursor
	-- Ctrl + O, return to previous file

- G goes to the last line (or provide a count before the command for a specific line).