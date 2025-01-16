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
alias vi='nvim'
alias v='vi'
alias c='code'
alias k='kubectl'
alias tt='tmux a -t'
alias lg="lazygit"
alias tf="terraform"


alias tds='todoist sync'
alias tdl="todoist --color l --filter '(overdue | today)'"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# configure thefuck
eval $(thefuck --alias)

# some shortcuts for python
alias python='python3'
alias p='poetry'
alias ape='eval $(poetry env activate)'
alias jl='jupyter lab'

