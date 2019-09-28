export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting zsh-completions vi-mode)

source $ZSH/oh-my-zsh.sh


# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#APT
alias up="apt update && apt upgrade -y"
alias inp="apt install"
alias rmv="apt remove"
alias pacs="apt search"


#youtube-dl
alias ytd-aac="youtube-dl --extract-audio --audio-format aac "
alias ytd-besta="youtube-dl --extract-audio --audio-format best "
alias ytd-flac="youtube-dl --extract-audio --audio-format flac "
alias ytd-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ytd-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias ytd-opus="youtube-dl --extract-audio --audio-format opus "
alias ytd-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias ytd-wav="youtube-dl --extract-audio --audio-format wav "
alias ytd-best="youtube-dl -f bestvideo+bestaudio "
alias ytd='youtube-dl'
alias ytdF='youtube-dl -F'
alias ytdf='youtube-dl -f'
alias ytv='youtube-viewer -C'

#MUTT
alias mail="mutt"
alias mp="cp mp .muttrc"
alias ib="cp ib .muttrc"
alias rr="cp rr .muttrc"

#GIT
alias gitc='git clone'
alias gitu='git push -u origin master'
alias gitca='git commit -a'
alias gita='git add'
alias gits='git status'

#SSH
alias fst='sshd'
alias fsts='pkill sshd'
alias myip='ifconfig'

#Transmission
tsmcc() {
        transmission-remote -l | grep 100% | grep Done | \
        awk '{print $1}' | xargs -n 1 -I % transmission-remote -t % -r ;}
tsm() { transmission-remote --list ;}
	# numbers of ip being blocked by the blocklist
	# credit: smw from irc #transmission
tsmcnt() { echo "Blocklist rules:" $(curl -s --data \
	'{"method": "session-get"}' localhost:9091/transmission/rpc -H \
	"$(curl -s -D - localhost:9091/transmission/rpc | grep X-Transmission-Session-Id)" \
	| cut -d: -f 11 | cut -d, -f1) ;}
# demo video: http://www.youtube.com/watch?v=TyDX50_dC0M
tsmbl() { $PATH_SCRIPTS/blocklist.sh ;}		# update blocklist
tsmdmn() { transmission-daemon ;}
tsmq() { killall transmission-daemon ;}
tsmase() { transmission-remote --alt-speed ;}	# limit bandwidth
tsmasd() {	transmission-remote --no-alt-speed ;}	# dont limit bandwidth
tsmadd() { transmission-remote --add "$1" ;}
tsmaskp() { transmission-remote -t"$1" --reannounce ;}
tsmstop() { transmission-remote -t"$1" --stop ;}		# <id> or all
tsmstart() { transmission-remote -t"$1" --start ;}		# <id> or all
tsmpurge() { transmission-remote -t"$1" --remove-and-delete ;} # delete data also
tsmdel() { transmission-remote -t"$1" --remove ;}		# leaves data alone
tsminfo() { transmission-remote -t"$1" --info ;}
tsmspeed() { while true;do clear; transmission-remote -t"$1" -i | grep Speed;sleep 1;done ;}

#MIS
alias wget="wget -c"
alias ip='ip addr show'
alias weather='curl wttr.in/khagrachari'
alias updb="updatedb"
alias q="exit"
alias math="mathomatic"
alias calc='python -ic "from __future__ import division; from math import *; from random import *"'
alias nnn='nnn -d'
#bindkey -v


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir)


OS_ICON='\uF17C'

#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)


