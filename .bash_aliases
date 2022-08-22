## Pre-loaded Aliases ##
# Show/hide hidden files in Finder.
alias finder-show-hidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias finder-hide-hidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias l="ls -al"
alias mkd=". ~/bin/mkdir"
alias s="subl"
alias sc="subl ."
alias scc="subl composer.json"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
#alias gh="cd ~" # Go home
alias gps="cd ~/projects-sync"
alias gp="cd ~/projects"
alias gpa="cd ~/projects/ark"
alias gpp="cd ~/projects/payvo"
alias c="php -d memory_limit=-1 /usr/local/bin/composer"
alias ci="c install"
alias cu="c update"
alias cr="c require"
alias ct="c test"
alias ct="c test"
alias cf="composer-fresh"
alias v="valet"
alias vo="v open"
alias pa="php artisan"
alias pas="pa serve"
alias pat="pa test"
alias g="git"
alias cd='. cd-git-wrapper'
alias y='yarn'
alias yi='y setup || y'
alias yid='yi && y dev'
alias yd='y dev'
alias yis='yi && y serve'
alias yw='y watch'
alias yp='y prod'
alias ys='y serve'
alias phpv7='valet use php@7.4 --force'
alias phpv8='valet use php@8.0 --force'
alias ms='meilisearch --no-analytics=1 --master-key=masterKey'
alias begin='valet use php@8.0 --force && brew services restart postgres && ms'
alias clear='printf "\n%.0s" {1..$(tput lines)}'

laravelclear() {
	php artisan cache:clear && php artisan route:clear && php artisan config:clear && php artisan view:clear
}

expcache() {
	laravelclear
	php artisan explorer:cache-development-data
}

#gps() {
#	cd "~/projects"
#	echo $1
#}
