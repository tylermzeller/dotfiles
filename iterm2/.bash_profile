alias ga='git add'
alias gc='git commit'
alias gcd='git checkout development'
alias gcm='git checkout master'
alias gco='git checkout'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gs='git status'
alias ls='ls -G'
alias ll='ls -alF'

function updatePrompt {
    # styles
    RED='\[\e[0;31m\]'
    YELLOW='\[\e[33;1m\]'
    GREEN='\[\e[0;32m\]'
    BLUE='\[\e[0;34m\]'
    RESET='\[\e[0m\]'

    PROMPT="${RED}\u${RESET}@ ${YELLOW}\w${RESET} ${GREEN}(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))${RESET}"

    if [[ "$(pyenv local 2>/dev/null)" != "" ]]; then
        PROMPT="$PROMPT ${BLUE}{$(pyenv local)}${RESET}"
    fi

    PS1="$PROMPT \$ "
}

export -f updatePrompt

export PROMPT_COMMAND='updatePrompt'

