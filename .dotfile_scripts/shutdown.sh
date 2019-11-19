#!/bin/bash
su -- indykoning -c "cd ~ && git add . >> log.txt && git commit -m\"Automatic commit.\" >> log.txt; git push origin master >> log.txt"
