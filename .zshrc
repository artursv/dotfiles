# Path to your oh-my-zsh installation.
export ZSH=/home/arturs/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(chucknorris docker gitfast vagrant)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
export PATH="/usr/local/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)

# -------------- Custom aliases -------------------

# Display user and hostname

# Display folder contents after changing directory
# function cd() { builtin cd "$@" && ls -l; }

# Everyday utilities
alias ll='ls -laGFh'
alias curl='curl -O'
alias xc='exit'
alias st='gs'
alias cgrep='grep -n --color=always'

export WKV_SITE_ENV=local

# Git commands
alias lg='git log --graph --color --all --pretty=format:"%C(yellow)%H%C(green)%d%C(reset)%n%x20%cd%n%x20%cn%x20(%ce)%n%x20%s%n"'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# GIT prompts
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Drush autocompleate
autoload bashcompinit
bashcompinit
source ~/.drush/drush.complete.sh

alias care-servers="encfs /home/arturs/Dropbox/WK\ Secure/Servers /home/arturs/Servers"

export PATH=~/.composer/vendor/bin:$PATH

# Vagrant
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vp="vagrant provision"
alias vgs="vagrant global-status"
alias vup="vagrant ssh -c 'cd /vagrant/drupal && ./build.sh update'"

# Show/hide hidden files/folders
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Automatically added by Platform.sh CLI installer
export PATH="/Users/arturs/.platformsh/bin:$PATH"
. '/Users/arturs/.platformsh/platform.rc' 2>/dev/null

chuck

# GO project dir
export GOPATH=$HOME/Sites/go-apps

autoload -U promptinit; promptinit
prompt pure
source /usr/local/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Ansible vault pass
export WT_ANSIBLE_VAULT_FILE=/home/arturs/Servers/ansible_vault_pass.txt

[ -s "/home/arturs/.scm_breeze/scm_breeze.sh" ] && source "/home/arturs/.scm_breeze/scm_breeze.sh"

export GIT_REPO_DIR="$HOME/Sites"

### Functions
cr () {
  root=$(git rev-parse --show-cdup) 
    if [ ! -z $root ]
      then
        cd $root
        fi
}


# Automatically added by Platform.sh CLI installer
export PATH="/home/arturs/.platformsh/bin:$PATH"
. '/home/arturs/.platformsh/shell-config.rc' 2>/dev/null
