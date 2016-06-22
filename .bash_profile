
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#change ruby version automagically
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.1

export PGHOST=localhost

#setup autocomplete for the lazy
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

#Start dinghy on boot
$(dinghy shell)

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
