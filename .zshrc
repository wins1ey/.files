# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
PS1='%n@%m %~ $ '


# Open fff with just 'f'
f() {
	fff "$@"
	cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

# fff config
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"

export FFF_HIDDEN=1
export FFF_OPENER="xdg-open"
export FFF_CD_ON_EXIT=1
export FFF_FAV1=~/
export FFF_FAV2=/

export PATH=~/.local/bin:$PATH

export PATH=/opt/psn00bsdk/bin:$PATH
export PSN00BSDK_LIBS="/opt/psn00bsdk/lib/libpsn00b"

export QT_QPA_PLATFORMTHEME=qt5gtk2
export LD_LIBRARY_PATH="usr/local/lib":$LD_LIBRARY_PATH

export CHROOT=$HOME/chroot

alias .files="/usr/bin/lazygit --git-dir=$HOME/.files --work-tree=$HOME"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.files --work-tree=$HOME"

. /usr/share/z/z.sh

source /etc/zsh/zshrc
