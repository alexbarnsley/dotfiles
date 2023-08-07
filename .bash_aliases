## Pre-loaded Aliases ##
# Show/hide hidden files in Finder.
alias finder-show-hidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias finder-hide-hidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias ai="sudo apt install"
alias l="ls -al"
alias mkd=". ~/bin/mkdir"
alias s="subl"
alias sc="subl ."
alias scc="subl composer.json"
alias c="code"
alias cc="c ."
alias ccc="c composer.json"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
#alias gh="cd ~" # Go home
alias py="python"
alias gps="cd ~/projects-sync"
alias gp="cd ~/projects"
alias gpn="cd /media/alexbarnsley/nvme/projects"
alias gpa="cd ~/projects/ark"
alias gpardent="cd ~/projects/ardent"
alias gpp="cd ~/projects/payvo"
alias c="php -d memory_limit=-1 /usr/local/bin/composer"
alias ci="c install"
alias cu="c update"
alias cr="c require"
alias ct="c test"
alias ctc="c test:coverage"
alias cf="composer-fresh"
alias c2="php -d memory_limit=-1 /usr/local/bin/composer-v2.2"
alias ci2="c2 install"
alias cu2="c2 update"
alias cr2="c2 require"
alias ct2="c2 test"
alias ctc2="c2 test:coverage"
alias v="valet"
alias vo="v open"
alias pa="php artisan"
alias pas="pa serve"
alias pat="pa test"
alias g="git"
alias cd='. cd-git-wrapper'
alias y='jspm'
# alias y='yarn'
# alias y='if [[ -f "yarn.lock" ]]; then yarn; else; pnpm; fi'
alias yi='y install'
alias yid='yi && y dev'
alias yb='if [[ -z $((jq -er ".scripts.build" package.json || echo "") | tail -n 1) ]]; then y prod; else; y build; fi'
alias yd='y dev'
alias yis='yi && y serve'
alias yw='y watch || y dev'
alias yp='if [[ -z $((jq -er ".scripts.prod" package.json || echo "") | tail -n 1) ]]; then y build; else; y prod; fi'
alias yt='y test'
alias f='~/.config/composer/vendor/bin/forge'
alias ys='if [[ -z $((jq -er ".scripts.serve" package.json || echo "") | tail -n 1) ]]; then y storybook; else; y serve; fi'
alias phpv7='valet use php@7.4 --force'
alias phpv8='valet use php@8.0 --force'
alias ms='meilisearch --no-analytics=1 --master-key=masterKey'
alias begin='valet use php@8.0 --force && brew services restart postgres && ms'
alias clear='printf "\n%.0s" {1..$(tput lines)}'
alias clear-laravel-logs='$(gp && find . -name "laravel.log" -exec rm {} \;)'
alias lc='laravelclear'

# function y() {
# 	COMMAND="yarn"
# 	# if [[ ! -f "yarn.lock" ]]; then 
# 	# 	COMMAND="pnpm"; 
# 	# fi

# 	echo "$COMMAND ${@:2}";
# 	eval "$COMMAND ${@:2}";
# }

laravelclear() {
	php artisan optimize:clear && php artisan view:clear && php artisan cache:clear && php artisan responsecache:clear && php artisan config:cache && pa route:clear && c dumpautoload
}

expcache() {
	laravelclear
	php artisan explorer:cache-development-data
}

#gps() {
#	cd "~/projects"
#	echo $1
#}
