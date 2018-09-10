### Linux useful commands

#### Symbolic links
````
ln -s website/web/ htdocs
````

#### Copy folder
````
cp -R source destination/
````

#### Copy files
````
scp -i secure.pem webmaster@ip:/folder/* .

// useful :
// -P for port
// Don't use the first / if you know in which folder you are when you connect to server
````
Do the opposite if you want to upload files to a remote server through ssh

https://www.computerhope.com/unix/scp.htm


#### Know the size of a folder

````
du -hs backup/
or
du -hs *

h for Human readable
s to limit to folder only (doesn't list all files inside)
````


#### Switch to super user

````
sudo su
````

#### Tar gzip archive
````
// Creation
tar zcvf archive.tar.gz folderToCompress/

// Extraction
tar zxvf archive.tar.gz
-c to set the folder to extract to
````

#### List of all starting services?
````
service --status-all
````

