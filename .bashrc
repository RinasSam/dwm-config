#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export force_color_prompt=yes
alias bochs-classic="bochs"
alias bochs="bochs-gdb-a20"
alias ls='ls --color=auto'
alias la='ls -A'
alias rm="rm -i"
alias edit="emacsclient"
export PS2DEV=/usr/local/ps2dev
export PS2SDK=$PS2DEV/ps2sdk
export GSKIT=$PS2DEV/gsKit
export TYRA_DIR=$PS2DEV/tyra
export TYRA=$TYRA_DIR
export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin
export ZLIB=${PS2SDK}/ports
export LIBTIFF=${PS2SDK}/ports
export LIBJPEG=${PS2SDK}/ports
export LIBPNG=${PS2SDK}/ports
export EDITOR='emacsclient'
export VISUAL='emacsclient -c'
export PREFIX="/opt/cross"
export PATH="$PREFIX/bin:$PATH"
source ~/.git-completion.bash
source ~/.git-prompt.sh
#export PS1="\u@\[\033[32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\]\$ "  \u001b[32m 

git_branch() {      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; }

#PS1='[\u@\h \W]\$ '
export lib='/usr/share/Fresh/freshlib'
export finc='/usr/share/Fresh/include'
eval "$(thefuck --alias)"
alias calc='qalc'
wiki() {
    search_term="${1}"
    lynx https://wiki.archlinux.org/index.php?search=${search_term}
}

PATH="$HOME/.local/bin${PATH:+:${PATH}}"
alias tmux='tmux -2'
source /etc/profile

export PS1="[\u@\h \W\]]\033[32m\]\$(git_branch)\[\033[00m\]\$ "
