#       _ _
#  __ _| (_)__ _ ___ ___ ___
# / _` | | / _` (_-</ -_|_-<
# \__,_|_|_\__,_/__/\___/__/
# shows all the media devices connected.
alias dfm='df -h | grep media | sed "s/\s\+/ /g" | cut -d" " -f6,1'
# automatic copy from terminal output with xclip.
alias xcc='xclip -selection c'
# list the packages that match the pattern given after the alias.
alias pkgl='tail -n +1 .pkgslists/* | grep -e "==>.*<==" -e'
# a way to manage bluetooth devices.
alias bmm='blueman-manager'
# allows to see any csv file directly in the terminal.
alias seecsv='perl -pe "s/((?<=,)|(?<=^)),/ ,/g;" "$argv" | column -t -s, | less  -F -S -X -K ;'
# wrapper around lf to support file preview.
alias lf='~/scripts/lfrun.sh'
# a complete diagnostic of the current directory.
alias diag='du -hs (ls (pwd) -A) | sort -h'
# replacement of vim by nvim.
alias nv='/usr/bin/nvim'
# the lazycli tool.
alias lac="$HOME/.local/bin/lazycli"
# to source this quicker.
alias sbrc="source $HOME/.bashrc"
# prettier ncdu.
alias ncdu="ncdu --color dark"
# generate a random sequence of characters.
alias rand="tr -dc 'A-Za-z0-9!@#\$%^&*()' < /dev/urandom  | head -c"
# wrapper of docker with rights.
# alias docker="sudo docker"
# wrapper around btop to bypass lack of locale.
alias btop="btop --utf-force"

# to list all the git repositiories inside the home directory or gives a full diagnostic with the extra d.
alias lgr='find $pwd -type d | grep "\.git\$" | sed "s/\/\.git//"'
# launches lazygit.
alias lg='/usr/bin/lazygit'
# interacts with my config's git bare repository.
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias lcfg='/usr/bin/lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias tcfg="GIT_DIR=$HOME/.dotfiles GIT_WORK_TREE=$HOME tig --all"
alias tiga='/usr/bin/tig --all'

alias tls='tmux ls'               # list the sessions.
alias tns='tmux new -s'           # creates a new session with name given after the alias.
alias tat='tmux attach -t'        # attaches to the session given after the alias.
alias tkt='tmux kill-session -t'  # kills the session with name given after the alias.

alias ncua='nmcli c up "a2n-s"'    # connects to my 4g, change to what you want.
alias ncue='nmcli c up "eduroam"'  # connects to the network of my school.

alias jpy='jupyter'
alias jnb='jupyter-notebook'

alias sdn='shutdown now -h'
alias sdnr='shutdown now -h -r'
# alias reboot='sudo reboot'
# alias sctl='sudo systemctl'

alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -i'
alias rmv='rm -v'
alias rmr='rm -r'
alias rmrf='rm -rf'

# enable color support of ls and also add handy aliases
if command -v exa &> /dev/null; then
  alias ls='exa -g --icons'
  alias ll="exa -l -g --icons"
  alias lla="exa -l -g -a --icons"
  alias tree="exa -g --icons --tree"
else
  alias ls='ls --color=auto'
  alias ll='ls -l --color=auto'
  alias lla='ls -la --color=auto'
fi
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias kicat="kitty +kitten icat"
alias kthemes="kitty +kitten themes"

alias qtheme="$HOME/.config/qtile/scripts/change-theme.sh"
alias qbar="$HOME/.config/qtile/scripts/bar.sh"
alias qrestart="qtile cmd-obj -o cmd -f restart"
alias qcmd="qtile cmd-obj -o cmd -f"
alias qprompt="qtile cmd-obj -o cmd -f spawncmd"
if command -v bat &> /dev/null; then
  alias qlog="bat $HOME/.local/share/qtile/qtile.log"
else
  alias qlog="cat $HOME/.local/share/qtile/qtile.log | less"
fi
alias qstop="qtile cmd-obj -o cmd -f shutdown"