alias bashpro='vim ~/.bash_profile'
alias bashpros="source ~/.bash_profile"

alias vimrc='vim ~/.vimrc'

alias ll='ls -alF'
alias lsg='ls -GFhl'
alias lsh='ls -dl .?*'


export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias gitlog='git log --graph --decorate'

# Screenshot Format
alias sspng="defaults write com.apple.screencapture type png;killall SystemUIServer"
alias sspdf="defaults write com.apple.screencapture type pdf;killall SystemUIServer"
alias ssjpg="defaults write com.apple.screencapture type jpg;killall SystemUIServer"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

lll () {
	ls -alF $1 | less
}

function list_path () {
    # split PATH variable into components, delimited by ‘:’
    IFS=’:’ read -ra path_elements <<< “${PATH}”
    # Print the split string
    for i in “${path_elements[@]}”
    do
        echo $i
    done
}

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/opt/homebrew/bin"

# defaults write com.apple.screencapture location ~/Desktop/ss

