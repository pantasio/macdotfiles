#! /bin/sh
set fish_greeting
export EDITOR=vim || export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source $HOME/.config/fish/shortcuts.fish
source $HOME/.config/fish/colors.fish
#set -gx PATH $HOME/.local/bin /usr/local/bin /opt/chromium /opt/android-sdk/platform-tools /opt/homebrew/bin $PATH

switch (uname)
case "*Darwin"
    alias lsblk="diskutil list"
case '*Linux'
    :
end

alias cl=clear
alias v=$EDITOR
alias la='ls -lha'
alias df='df -h'
alias du='du -ch'
alias ipp='dig -4 +short myip.opendns.com @resolver1.opendns.com'
#alias yh='youtube-dl --continue --no-check-certificate --format=bestvideo+bestaudio[ext=m4a]/best --merge-output-format=mp4'
#alias yd='youtube-dl --continue --no-check-certificate --format=bestvideo+bestaudio --exec="ffmpeg -i {} -c:v dnxhd -profile:v dnxhr_hq -vf fps=25/1,format=yuv422p -c:a pcm_s16le {}.mov && rm {}"'
#alias ya='youtube-dl --continue --no-check-certificate --format=bestaudio -x --audio-format wav'


#############################
# my persional alias

# Load Git alias
source $HOME/.config/fish/alias/git.fish


# Edit fish config
alias ef='vim ~/.config/fish/config.fish'
# Reload fish
alias rf='exec fish'

# Blog commands
#alias generate='rm -f dst/.files && ssg5 src dst "Wolfgang\'s Blog" "http://notthebe.ee"'
#alias deploy='rsync --rsync-path "sudo -u www-data rsync" -avP --delete dst/ snowfall:/var/www/blog'

# Add Vscode Path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"



# Flutter add PATH
export PATH="$PATH:$HOME/tools/flutter/bin"

# Add ruby for flutter
export PATH="$PATH:/usr/local/opt/ruby/bin"
set -gx LDFLAGS "-L/usr/local/opt/ruby/lib"
set -gx CPPFLAGS "-I/usr/local/opt/ruby/include"

# Add Android SDK PATH
export PATH="$PATH:$HOME/Library/Android/sdk"


# StarShip theme for FishShell
starship init fish | source
export STARSHIP_CONFIG=$HOME/.config/starship/config.toml
export STARSHIP_CACHE=$HOME/.config/starship/cache

