vi - virtually improve

**ICE modes**

**I**nsert - `i`

**C**olon - `:`
 
**E**sc - `esc`

*commands-mode*
---

`:q `- quit the file

`:q! `- force quit the file 

`:wq `- write and quit

`:wq!` - write and force quit

---
`:/<find-text>` - search text from top

`:?<find-text>` - search text from bottom

---
***delete***

`:%d` - delete all content in file

`:2 d` - delete second line

---
***replace***

`:3/<target-text>/<replace-text>` - replace the word in first occurrence in 3rd line

`:3/<target-text>/<replace-text>/g `- replace the word in all occurrence in 3rd line

`:%s/<target-text>/<replace-text>/g `replace the word in all occurrence in all line

*esc-mode*
---
`u` - undo

`p` - paste

`dd` - cut the line

`gg` - takes the top line in the file

`shift+g` - takes the bottom line in the file

