#!/bin/bash
cmd="cd ~ && git pull origin master"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    su -- indykoning -c "${cmd}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    bash -c "${cmd}"
fi
