### Linux useful commands

#### Symbolic links

```
ln -s website/web/ htdocs
```

#### Copy folder

```
cp -R source destination/
```

#### Copy files

```
scp -i secure.pem webmaster@ip:/folder/* .

// useful :
// -P for port
// Don't use the first / if you know in which folder you are when you connect to server
```

Do the opposite if you want to upload files to a remote server through ssh

https://www.computerhope.com/unix/scp.htm

#### Know the size of a folder

```
du -hs backup/
or
du -hs *

h for Human readable
s to limit to folder only (doesn't list all files inside)
```

#### Switch to super user

```
sudo su
```

#### Tar gzip archive

```
// Creation
tar cvfz archive.tar.gz folderToCompress/

// -p to keep permissions and it will include . files (ex .htaccess)
tar cvpfz file.tar.gz *

// Extraction
tar zxvf archive.tar.gz
-c to set the folder to extract to
```

#### List of all starting services?

```
service --status-all
```

#### Find all files containing a specific text

```
grep -rnw '/path/to/somewhere/' -e 'pattern'


-r or -R is recursive,
-n is line number, and
-w stands for match the whole word.
-l (lower-case L) can be added to just give the file name of matching files.

```

https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux
