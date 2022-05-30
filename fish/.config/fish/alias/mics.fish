# Edit fish config
alias ef='vim ~/.config/fish/config.fish'
# Reload fish
alias rf='exec fish'


# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

alias cl=clear
alias v=$EDITOR

# Check Harddisk
alias df='df -h'
alias du='du -ch'
alias ipp='dig -4 +short myip.opendns.com @resolver1.opendns.com'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

























