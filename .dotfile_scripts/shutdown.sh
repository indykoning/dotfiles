#!/bin/bash

su -- indykoning -c "cd ~ && git add . && git commit -m\"Automatic commit.\" && git push origin master"
