# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


# Deans Things

# handy aliases
alias grepi='grep -i' 
alias fuck='sudo $(history -p \!\!)'
alias ll='ls -l' 
alias ls='ls -aGF'
alias vf='vim "`fzf`"'
alias of='open `fzf`'
alias agi='ag -i -U' 
alias agb='ag -i -U --search-binary'
alias agc='ag -i -U --ignore="*.js" --ignore="*.css"'
alias ..='cd ..' 
alias c='clear'
alias apt-get='sudo apt-get'
alias gs='git status'
alias lr='ll -ltr'
alias wl='wc -l'
alias dw='git add ~/code/knowledge/productivity/deep-work-log.txt && git commit -m "dw++" && git push && dwlog'
alias cindex='ctags -R . && cscope -Rb'
alias curla='curl -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" '
alias psgr='ps -ef | grepi '
alias python=python3
alias k=kubectl
alias pre-check=$GOPATH/src/pre-commit-checking/pre-commit.sh

coderev() {
    docker run -it -v ~/code/$1:/root/code_review codereview
}

gocov() {
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

# golang stuff
export GOPATH=~/code/go 
export GOBIN=$GOPATH/bin
alias gf='gofmt -s -w .'

# stop zsh from changing tmux titles
DISABLE_AUTO_TITLE=true

export PATH="/usr/local/sbin:$PATH"
export PATH=~/code/go/bin:$PATH
export PATH=$PATH:/usr/local/go/bin


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dean/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dean/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dean/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dean/google-cloud-sdk/completion.zsh.inc'; fi
