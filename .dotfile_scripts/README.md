# Dotfile scripts
These are the files i run to keep my dotfiles synced between my computer. The scripts running are quite simple, moving to the home directory at startup and pulling new changes. Adding, committing and pushing files at shutdown.
## Installation
The installation is quite simple:
Edit the startup and shutdown scripts to use your username instead of mine.
And of course add your remote as `origin` to actually pull and push your files.
NOTE: Your computer does need read and write access to the repository. I suggest using the ssh way.
### OSX
#### Startup
Add the startup.app script to the login items in:
`System Preferences > Users & Groups > <your user> > Login Items`
NOTE: this sadly does not run the `shutdown.sh` file, but rather has the script embedded in the app.
#### Shutdown
Simply move the `.logouthook` file to your home directory and make it executable
```
$ cp ~/.dotfile_scripts/.logouthook ~/.logouthook
$ chmod 755 ~/.logouthook
```
