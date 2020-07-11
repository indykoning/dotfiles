# Dotfile scripts
These are the files i run to keep my dotfiles synced between my computer. The scripts running are quite simple, moving to the home directory at startup and pulling new changes. Adding, committing and pushing files at shutdown.
## Installation
The installation is quite simple:
Edit the startup and shutdown scripts to use your username instead of mine.
And of course add your remote as `origin` to actually pull and push your files.
NOTE: Your computer does need read and write access to the repository. I suggest using the ssh way.
### OSX
#### Startup & shutdown
Add the OSX_Startup_shutdown.app script to the login items in:
`System Preferences > Users & Groups > <your user> > Login Items`
### Linux
#### Startup & Shutdown
For Linux you'll have to copy the service to `/etc/systemd/system/start_and_stop.service`
and then enabling the service.
```
$ sudo cp ~/.dotfile_scripts/start_and_stop.service /etc/systemd/system/start_and_stop.service
$ systemctl enable start_and_stop
```
## Adding new files
By default every file is ignored since it is a bad idea to upload your whole home folder to github.
To add a new file to the respository you have to add it by force: `git add -f <filename>`
After which it will automatically be added and pushed the next times you edit the file.
