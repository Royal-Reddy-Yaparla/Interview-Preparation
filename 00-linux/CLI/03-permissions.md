**permissions**
--
for each file/repo has three kind of owners

**user** | **group** | **other**

**-rw-    |rw-          |r--**

`u` - user

`g` - group

`o` - others

each owner can be provided three types of permissions

**Alphabetical**

`r` - read  

`w` - write

`x` - execute

**numerical**

`4` - read  

`2` - write

`1` - execute

read=`4` + write=`2` + execute=`1` = `7`

<ins> assign permission to file  </ins> 

Alphabetic way

*adding*

`chmod u+rwx <file-name>`

*remove*

`chmod u-rwx <file-name>`

numerical

`chmod 700 <file-name>`

