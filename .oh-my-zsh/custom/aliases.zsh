#some custom aliases
autoload zmv
alias mmv='noglob zmv -W'

# replacement of standard commands with better alternatives
alias ls='lsd'
alias cat='bat'

# common aliases for ls
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

#some shortcuts
alias r='ranger'
alias v='nvim'
alias c='code'
alias k='kubectl'
alias tt='tmux a -t'
alias ape='pipenv shell'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
