#!/bin/bash
if ! ps ux | grep -q ssh-agent$; then
    ssh-agent | sed /echo/d > ~/.ssh/environment
    . ~/.ssh/environment
    ssh-add
fi

