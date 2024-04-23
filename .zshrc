
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gcm='git checkout main'
alias gcma='git checkout master'
alias c='clear'
alias su='spin up'
alias sl='spin list'
alias sc='spin code'
alias so='spin open'
alias gpfl='git push --force-with-lease'
alias gpf='git push -f'
alias gp='git push'
alias gl='git log'

PS1='%n@%m %~ %# '

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
