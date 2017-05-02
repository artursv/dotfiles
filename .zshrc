# ZSH settings.
export ZSH=/home/arturs/.oh-my-zsh
ZSH_THEME="refined"
COMPLETION_WAITING_DOTS="true"
plugins=(chucknorris docker gitfast vagrant)
source $ZSH/oh-my-zsh.sh
chuck
source /usr/local/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
export PATH="/usr/local/bin:$PATH"
fpath=(/usr/local/share/zsh-completions $fpath)
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=~/.composer/vendor/bin:$PATH

# Random aliases
alias ll='ls -laGFh'
alias curl='curl -O'
alias xc='exit'
alias st='gs'
alias cgrep='grep -n --color=always'

# Decrypt Care password share
alias care-servers="encfs /home/arturs/Dropbox/WK\ Secure/Servers /home/arturs/Servers"

# Wundertools settings
export WKV_SITE_ENV=local

# Git aliases
alias lg='git log --graph --color --all --pretty=format:"%C(yellow)%H%C(green)%d%C(reset)%n%x20%cd%n%x20%cn%x20(%ce)%n%x20%s%n"'

# Drush autocompleate
autoload bashcompinit
bashcompinit
source ~/.drush/drush.complete.sh

# Vagrant
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vp="vagrant provision"
alias vgs="vagrant global-status"
alias vup="vagrant ssh -c 'cd /vagrant/drupal && ./build.sh update'"

# Automatically added by Platform.sh CLI installer
export PATH="/Users/arturs/.platformsh/bin:$PATH"
. '/Users/arturs/.platformsh/platform.rc' 2>/dev/null

# Ansible vault pass
export WT_ANSIBLE_VAULT_FILE=/home/arturs/Servers/ansible_vault_pass.txt

# SCM Breeze configs
[ -s "/home/arturs/.scm_breeze/scm_breeze.sh" ] && source "/home/arturs/.scm_breeze/scm_breeze.sh"
export GIT_REPO_DIR="$HOME/Sites"

# Jump to git repository root.
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
