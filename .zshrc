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

# Setup shared history
# Useful when you have multiple sessions (e.g. tmux)
SAVEHIST=10000
HISTSIZE=5000
HISTFILE="${HOME}/.zsh_history"

setopt share_history  # Share history between all sessions
setopt extended_history  # Save start and run time in history, use 'fc -l -fD 1'
setopt notify  # Report background jobs immediately

# Auto cd into directory if the dir name is typed like a command
unsetopt autocd

PROMPT='%K{blue}%n@%m%k %F{green}%B%~%b%f%(?.$.%F{red}$%f) '

alias apt-get='sudo apt-get -y'
alias apt-up='sudo apt-get update'

alias ll='ls -lFGa --color'
alias l='ls -lFGa --color'
alias h='history'
alias grepp='grep --color=auto -In --exclude-dir={.build,.git} --exclude={.tags,tags,cscope.out}'
alias ns='netstat -tulpn'

alias g='git'
alias gf='git fetch'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gp='git push'
alias gl='git log --oneline'
alias gb='git batch'
alias gch='git checkout'
alias gcp='git cherry-pick'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'

alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias loadzsh='source ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias loadbash='source ~/.bashrc'
alias sshrc='vim ~/.sshrc/config'
alias tmuxrc='vim ~/.tmux.conf'

alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

alias python3='python3'
alias pip3='pip3'
alias python='python2.7'
alias pip='pip2'

export EDITOR=vim
