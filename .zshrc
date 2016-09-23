# Path to your oh-my-zsh installation.
export ZSH=/Users/arturs/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
 ZSH_THEME="robbyrussell"

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

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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

alias care-servers="encfs /Users/arturs/Dropbox/WK\ Secure/Servers /Users/arturs/Servers && open ~/Servers/hosting-access.txt"

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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -s "/Users/arturs/.scm_breeze/scm_breeze.sh" ] && source "/Users/arturs/.scm_breeze/scm_breeze.sh"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Powerline configs
function powerline_precmd() {
    PS1="$(~/powerline-shell.py $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}
if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

chuck

# Behat settings
BEHAT_PARAMS="{
    \"suites\": {
      \"default\": {
        \"settings\": {
          \"environmentParameters\": {
            \"magazineSubscriberUsername\": \"test.magazine.subscriber@example.com\",
            \"magazineSubscriberPassword\": \"magazine.subscriber\",
            \"organisationalUserUsername\": \"test.organisational.user@example.com\",
            \"organisationalUserPassword\": \"organisational.user\"
          }
        }
      }
    }
  }"
export BEHAT_PARAMS

# LastPass configs
#source /home/janne/.zsh/lpass_bash_completion
#source /home/janne/.zsh/lpwd_completion
#export LPASS_CLIPBOARD_COMMAND="xclip -selection clipboard -in -l 1"
export PASS_DISABLE_PINENTRY=1
export LPASS_AGENT_TIMEOUT=28800
#export LPASS_ASKPASS=/home/janne/bin/lpass_prompt
