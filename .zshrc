ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  docker
  git
  jsontools
  zsh-syntax-highlighting
  zsh-autosuggestions
)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs)

alias h='history'
alias grep='grep --color=auto'

alias gcm='git commit -m'
alias gcam='git commit -am'
alias gp='git push'

alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias loadzsh='source ~/.zsh'
alias bashrc='vim ~/.bashrc'
alias loadbash='source ~/.bashrc'

export EDITOR=vim
