export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  docker
  git
  jsontools
  zsh-syntax-highlighting
  zsh-autosuggestions
)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs virtualenv)

alias apt-get='sudo apt-get -y'
alias apt-up='sudo apt-get update'

alias l='ls -l'
alias h='history'
alias grep='grep --color=auto'
alias ns='netstat -tulpn'

alias gstat='git status'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gp='git push'
alias gitprettylog='git log --pretty=oneline'

alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias loadzsh='source ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias loadbash='source ~/.bashrc'

alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

alias python3='python3'
alias pip3='pip3'
alias python='python2.7'
alias pip='pip2'

export EDITOR=vim
