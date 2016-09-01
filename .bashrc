#!bin/bash

#ALIASES FOR SHORTCUTS!!!
alias be="bundle exec"
alias npm_purge="rm -rf node_modules && rm -rf gems/**/node_modules && npm cache clean && npm install"
alias dbm="bin/rake db:migrate && bin/rake db:migrate RAILS_ENV=test"
alias canDock="runCanvasDocker"
alias cleanDock="cleanDocker"
alias canLoc="runCanvasLocal"
alias cleanLoc="clean2"
alias dc="docker-compose"
alias dcr="docker-compose run --rm web"
alias dcu="docker-compose up"
alias dcd="docker-compose down"

function docker_clean() {
docker rm -v $(docker ps -a -q -f status=exited)
docker rmi $(docker images -f "dangling=true" -q)
}

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
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"
