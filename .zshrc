# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#POWERLEVEL9K_MODE="awesome-patched"
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#JAVA_HOME=('/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/')
#export JAVA_HOME

COMPOSER_PATH=("$HOME/.config/composer/vendor/bin")
export COMPOSER_PATH

GOPATH=("$HOME/projects/go")
export GOPATH
GOROOT=('/usr/local/opt/go@1.13/libexec')
export GOROOT

ANDROID_HOME=("$HOME/Android/Sdk")
export ANDROID_HOME
ANDROID_SDK_ROOT=("$HOME/Android/Sdk")
export ANDROID_SDK_ROOT
ANDROID_AVD_HOME=("$HOME/.android/avd")
export ANDROID_AVD_HOME
JAVA_HOME=('/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home')
export JAVA_HOME

CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))
export CUDA_HOME
TENSOR_RT_PATH="/var/local/python/TensorRT-8.6.1.6"
export TENSOR_RT_PATH
CUDA_HOME=('/usr/local/cuda/')
export CUDA_HOME
LD_LIBRARY_PATH+=("$CUDA_HOME/lib64/:$TENSOR_RT_PATH/lib")
export LD_LIBRARY_PATH

path+=("$CUDA_HOME/bin")
path+=($JAVA_HOME)
path+=("$ANDROID_HOME/platform-tools")
path+=("$ANDROID_HOME/tools")
path+=("$ANDROID_HOME/emulator")
path+=("$ANDROID_HOME/tools/bin")
path+=($GOPATH)
path+=($GOROOT)
path=("$HOME/.composer/vendor/bin" $path)
path=("$HOME/bin" $path)
path=($path "$HOME/bin")
path=("$JAVA_HOME/bin" $path)
path+=($COMPOSER_PATH)
export PATH

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.bash_aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

#if [ "$PWD" = "/Users/alexbarnsley" ]; then
#	gp
#fi

#xmodmap ~/.Xmodmap

# pnpm
export PNPM_HOME="/home/alexbarnsley/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
