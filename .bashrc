# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
#case $- in
#    *i*) ;;
#      *) return;;
#esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep -i --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l.='ls -d *. --color=auto'
alias l='ls -CF'
alias vim='nvim'
alias svim='sudo nvim'
alias v='nvim'
alias ..='cd ..'
alias pls='sudo'
alias k9='sudo kill -9'
alias cls='clear'
alias instala='sudo apt install'
alias instalar='sudo snap install'
alias goto-sleep='echo "systemctl suspend" | at now + 1 hour'
#alias bugzilla='ssh informatica@bugzilla.ensenada.gob.mx'
#alias neurona='ssh neurona@74.208.160.86'
alias aws='ssh -i "aws-mxnlabs.pem" ubuntu@ec2-52-9-235-72.us-west-1.compute.amazonaws.com'
alias gort='ssh mentat@192.168.0.7'
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias fh='eval "$(fc -ln 1 | fzf)"'
alias updateall='sudo apt update && sudo apt upgrade'
alias root='sudo -i'
alias su='sudo -i'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown -h now'
alias ite="cd /home/pk/borrame/ite"
alias x_cp='xclip -selection clipboard'
alias x_pa='xclip -selection clipboard -o'
## sudo apt install xsel
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
#  Add an "alert" alias for long running commands.  Use like so: 
#   sleep 10; alert 1247656968
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
##docker aliases

alias docker-stop-all="sudo docker ps -aq | sudo xargs docker stop"
alias docker-remove-all="sudo docker ps -aq | sudo xargs docker rm"
alias nextflixoff="ssh -t mentat@192.168.0.7 'sudo shutdown -h now'"
alias animeoff="ssh -t mentat@192.168.0.20 'sudo shutdown -h now'"
# Alias definitions.
export CAPACITOR_ANDROID_STUDIO_PATH=/media/pk/Data/Software/Android/android-studio/bin
#export ANDROID_HOME=/home/pk/Android/android-studio
export PATH=$PATH:/home/pk/anaconda3/bin
export PATH=$PATH:/home/pk/.config/composer/vendor/bin/
export PATH=$PATH:/home/pk/.deno/bin/
export JAVA_HOME_2=/media/pk/Data/Software/Android/jdk1.8.0_351
export STUDIO_JDK=/media/pk/Data/Software/Android/jdk1.8.0_351
export JDK_HOME=/media/pk/Data/Software/Android/jdk1.8.0_351
export JAVA_HOME=/usr/lib/jvm/java-19-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin
export ANDROID_HOME=/media/pk/Data/Software/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform_tools/bin
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:/home/pk/.local/share/pnpm
# You may want to put all your additions into a separate file like
# You may want to put all your additions into a separate file like
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

function preCommand() { 

    if [ "$BASH_COMMAND" = "aws cloudformation delete-stack" ]; then
        echo "nel carnal, luego se hace el desmadre, preguntale al boss"
        return
    fi
    echo "simon es valido"
  }

#trap "preCommand" DEBUG

#PROMPT_COMMAND=_prompt


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/pk/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export MODULAR_HOME="/home/pk/.modular"
export PATH="/home/pk/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pk/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/home/pk/.modular/bin"