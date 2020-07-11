#!/bin/bash
cmd="cd ~ && git add . && git commit -m\"Automatic commit.\"; git push origin master"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    su -- indykoning -c "${cmd}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "shutdown" > ~/.dotfile_scripts/shutdown.log
    #echo $cmd
    bash -c "${cmd}"
    echo "done" >> ~/.dotfile_scripts/shutdown.log
fi
