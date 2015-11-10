export PROMPT_COMMAND='__git_ps1 "\[\033[0;31m\]\u\[\033[0m\]@\[\033[0;34m\]\h\[\033[0;36m\] \w\[\033[0m\]" "\n\[\033[32m\]»\[\033[0m\] "'
export HISTFILESIZE=10000
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias grep='grep --color=auto'
alias ls='ls -G'
alias ll='ls -la'
alias gbc="git branch 2> /dev/null | grep -e ^* | awk '{ print \$2 }' | pbcopy"
alias be="bundle exec"
