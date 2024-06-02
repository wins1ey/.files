#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
    local branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \\(.*\\)/\\1/')
    if [ -n "$branch" ]; then
        echo " $branch"
    fi
}
PS1="\\[\\033[01;34m\\]\\u\\[\\033[00m\\]@\\h \\w\\[\\033[01;32m\\]\$(parse_git_branch) \\[\\033[00m\\]$ "

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lzg.files="/usr/bin/lazygit --git-dir=$HOME/.files --work-tree=$HOME"
alias git.files="/usr/bin/git --git-dir=$HOME/.files --work-tree=$HOME"
alias lzg="/usr/bin/lazygit"

export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"

export PATH="/home/tom/.local/bin:$PATH"
export PATH=/opt/psn00bsdk/bin:$PATH
export PSN00BSDK_LIBS="/opt/psn00bsdk/lib/libpsn00b"

export CHROOT=$HOME/chroot

. /usr/share/z/z.sh
