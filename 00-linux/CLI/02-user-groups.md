**user-management**
--
`useradd <name>` - create user

`sudo useradd -m -s /bin/bash <name>` - create user along with home directory

`passwd <username>` - to set password for user

`del <username>` - to delete user

`whoami`  - provide current user id and groups info

`id <user-name>` - to user info

`usermod -aG <group-name> <user-name>` - add user to group 

`gpasswd -d <username> <group>`  - remove user from group

---
**group-management**

**primary group** - when creating user , primary group also created , on username, can't delete user from primary group

**secondary group** - its is external group , we can add and remove user from secondary groups.

`addgroup <name>`  - to create group.

`delgroup <name>`  - to delete group.