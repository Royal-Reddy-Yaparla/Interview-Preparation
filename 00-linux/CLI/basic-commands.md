# basic commands
---
`cd`    - change directory

`cd ..` - one repo back from current repo

`cd -`  - get back to previous repo

---

`ls -l`   - long list format for alphabetical order

`ls -la`  - long list format for alphabetical order include hidden files

`ls -lr`  - long list format for reverse alphabetical order.

`ls -lt`  - long list format for latest files on top.

`ls -ltr` - long list format for latest files on bottom.

---

`#` - represents root user

`$` - represents normal user

---
`touch` <file-name>- create a file

`cat` - read the data in file.

`rm <file-name>` - delete file

`rm -f <file-name>` - delete file forcefully 

---
### redirection operators
`>>` - redirect append data 

`>`  - redirect writes data

cat >> <file name> add data, enter ctl + c , create a file if not exists also, if exist append data, add data. 

cat > <file name> add data, enter ctl + c , create a file if not exists also, if exist , override the data.

---
`mkdir <name>` - create a repo/directory

`mv <curret-name> <new-name>` - change name of repo , if provide path move to the location.

`rmdir <name>` - remove the empty directory

`rm -rf <name> `- remove the directory recursively , mean if files in repo , remove repo along with files.

---

`cp` <source> <destination> - copy the file

`cp -r` <source> <destination> - copy the repo

`mv <source> <destination>` - move 

`mv <curret-name> <new-name>` - change name of repo , if provide path move to the location.

---
echo "<data>" - print the data

---
<ins> CURL </ins> - (client url) is a command-line tool that talks to URLs.dumps the raw HTML in terminal

`curl <source - ip+port or url>`- to display data on screen

**Check response status code**

`curl -o /dev/null -s -w "\nHTTP Code: %{http_code}\nTotal Time: %{time_total}s\nDownload Size: %{size_download} bytes\n" https://example.com`

---

<ins> wget </ins>

`wget` is command to download file from internet, acts download manages.

wget https://file-examples.com/wp-content/storage/2019/09/file-sample_100kB.rtf file

---
<ins> grep </ins> for text find in a file

`cat <file> | grep <find-text>`

---
<ins> awk </ins> 

`awk` is like a text processor — it extracts data from input using given filters, and it can also perform math operations on that data.

`ps -aux | awk '{print $3 $4}'`

---
`tail` - print the data from end , default show last 10 lines in files

`tail -f <file-name>`
`-f` continues watching new data

---
`head` - print the data from end , default show first 10 lines in files

`head <file-name>`

---


