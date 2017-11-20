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
````

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