export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv init -)";  eval "$(pyenv virtualenv-init -)"; fi

eval $(thefuck --alias)
