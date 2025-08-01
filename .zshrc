[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH" # Java for Clojure

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/nikijiandani/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Aliases
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
alias dr='dev reup && dev restart --procs'

PS1='%n@%m %~ %# '

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
