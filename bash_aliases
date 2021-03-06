# Show/hide hidden files in Finder.
alias finder-show-hidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias finder-hide-hidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias l="ls -al"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias gh="cd ~" # Go home
alias gps="cd ~/projects-sync"
alias gp="cd ~/projects"
alias c="clear" # Typing the whole word is annoying
alias g="git"
alias cd='. cd-git-wrapper'
alias y='yarn'
alias yi='y setup || y'
alias yid='yi && y dev'
alias yd='y dev'
alias yis='yi && y serve'
alias ys='y serve'
