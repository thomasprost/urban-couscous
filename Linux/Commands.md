### Linux useful commands

#### Symbolic links

```
ln -s website/web/ htdocs
```

#### Copy folders and files

```
cp -r source destination
```

Keep ownership and permissions when copying
```
cp -rp source destination
```

Include hidden files and dotfiles when copying

```
Don't specify the files
cp -r source destination

or if want to copy all files inside a folder
cp -r source/. destination
```

Force Copy without confirmation

```
Use ONE backslash before cp
\cp -r source destination
```


#### Download/Upload files over ssh 

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

// Display files without extracting
tar -tf filename.tar.gz
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

#### Download and install binaries/cli from source

```
// Download 
wget ***.tar.gz (For example)
// Untar
tar zxvf ***.tar.gz

// Change directory then configure before installing
./configure
make
make check
make install

```

#### Show your PATH
```
echo $PATH
```

#### Update your PATH to point to custom binaries
```
// You need to add to your ~/.profile or ~/.bashrc file. 
export PATH="$PATH:/path/to/dir"

// If you need your new binary directory to be executed first, change it to :
export PATH="/path/to/dir:$PATH"

source ~/.profile 
// or
source ~/.bashrc

// to update it 
```

#### Manage History

```
// Check command history
history

// Remove specific line
history -d 1234

//Additionally, if the line you want to delete has already been written to your $HISTFILE
//(which typically happens when you end a session by default), you will need to write back to $HISTFILE, 
// or the line will reappear when you open a new session:
  
history -w

```

### Preventative measures

If you want to run a command without saving it in history, prepend it with an extra space
```bash
prompt$ echo saved
prompt$  echo not saved \
> #     ^ extra space
```
For this to work you need either ignorespace or ignoreboth in HISTCONTROL. For example, run

HISTCONTROL=ignorespace

To make this setting persistent, put it in your .bashrc and source .bashrc


Source : https://unix.stackexchange.com/a/49216