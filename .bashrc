#!bin/bash

#ALIASES FOR SHORTCUTS!!!
alias be="bundle exec"
alias npm_purge="rm -rf node_modules && rm -rf gems/**/node_modules && npm cache clean && npm install"
alias dbm="bin/rake db:migrate && bin/rake db:migrate RAILS_ENV=test"
alias canDock="runCanvasDocker"
alias cleanDock="cleanDocker"

#functions
function new_tab() {
  TAB_NAME=$1
  COMMAND=$2
  osascript \
    -e "tell application \"Terminal\"" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"cd `pwd`; clear; printf '\\\e]1;$TAB_NAME\\\a'; $COMMAND\" in selected tab of the front window" \
    -e "end tell" > /dev/null
}
export -f new_tab

export PATH=$PATH:~/scripts
