# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="mmo"

export BULLETTRAIN_PROMPT_CHAR="%b╰─➤"
ZSH_THEME="bullet-train"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git archlinux docker docker-compose git-extras gpg-agent rsync ssh-agent sudo systemd python thefuck gopass pass kubectl)
#vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/qwc/bin:/home/qwc/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/opencascade/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/qwc/.gem/ruby/2.1.0/bin"
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Customize to your needs...
alias duplicity_ne="duplicity --no-encryption --asynchronous-upload --volsize 100 -v6"
# Test and then source alias definitions.
#if [ -f ~/.zsh/zshaliases ]; then
#       source ~/.zsh/zshaliases
#else
#       print "Note: ~/.zsh/zshaliases is unavailable."
#fi
export GOPATH=~/source/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/lib/go
export PATH=~/bin:$PATH:$(go env GOPATH)/bin
export EDITOR=/usr/bin/vim
export SDL_AUDIODRIVER=alsa
export CHROMIUM_USER_FLAGS="--disk-cache-dir=/tmp"
export PATH=$PATH:/usr/share/java/gradle

alias docker-cleanup="docker rm $(docker ps -a -q) && docker rmi $(docker images | grep "^<none>" | awk "{print $3}")"

alias docker-images="docker images --format \"table {{.ID}}\t{{.Repository}}:{{.Tag}}\t{{.CreatedSince}}\t{{.Size}}\""

alias gt="git tag"
alias mypublicip="dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com"
alias mypublicip6="dig -6 TXT +short o-o.myaddr.l.google.com @ns1.google.com"
# alias tree="__TREE_IGNORE=\"\"; if [ -f ./.gitignore ]; then; for line in $(cat .gitignore); do; __TREE_IGNORE=\"\${__TREE_IGNORE}\$line|\"; done; __TREE_IGNORE=\${__TREE_IGNORE}.git; fi; tree -I \"\$__TREE_IGNORE\"; __TREE_IGNORE=\"\""

# Software development:
alias oft=java\ -jar\ ~/bin/openfasttrace-3.7.0.jar

# TMUX
if [ -z ${NOTMUX} ]; then
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi
fi
stty -ixon
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
