#EXPORT
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
# export LANG=en_US.UTF-8

#Plugins
plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting zsh-completions vi-mode)

#Theme
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"
#ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

#SOURCE
source $ZSH/oh-my-zsh.sh
source /data/data/com.termux/files/home/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

#Navigation

#files
alias ls="ls --color=auto --group-directories-first"
alias lah="exa -la --color=auto --group-directories-first"
alias ..='cd ..'
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias rm1="rm -v 1*"
alias mkd="mkdir -pv"

#termux-cd
alias cdusr="cd $PREFIX"
alias cdetc="cd $PREFIX/etc/"
alias cdbin="cd $PREFIX/bin/"
alias cdshare="cd $PREFIX/share/"
alias cdd="cd ~/storage/downloads/"
alias cdtui="cd ~/storage/shared/t-ui"

#termux-api
alias tb="termux-brightness"
alias tba="termux-brightness auto"
alias tbl="termux-brightness 25"
alias tbh="termux-brightness 100"
alias ts="termux-style"
alias to="termux-open"
alias tp="termux-open 1.jpg"
alias tg="termux-open 1.gif"
alias tv="termux-open 1.mp4"

#APT
alias up="apt update && apt upgrade -y"
alias inp="apt install"
alias rmv="apt remove"
alias armv="apt autoremove"
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
alias ibx="mutt"
alias mp="cp mp .muttrc && ibx"
alias ib="cp ib .muttrc && ibx"
alias rr="cp rr .muttrc && ibx"
alias lic="cp lic .muttrc && ibx"

#GIT
alias gitc='git clone'
alias gitu='git push -u origin master'
alias gitca='git commit -a'
alias gita='git add'
alias gits='git status'

#Game
#alias doku='nudoku'
alias tet='tetris'
alias mine='cd ~/games/mines; ./mines 16x30x99; cd'
alias frcl='cd ~/games/sol; ./freecell; cd'
alias sol='cd ~/games/sol; ./sol; cd'
alias spider='cd ~/games/sol; ./spider; cd'

#SSH
alias fst='sshd'
alias fsts='pkill sshd'

#ip/ping
alias pnet='ping -c 3 google.com'
alias myip='ifconfig'
alias isp='curl ifconfig.co'
alias ip='ip addr show'
alias ns='speedtest'
alias nss='speedtest --simple --single'

#Transmission
tsmcc() {
        transmission-remote -l | grep 100% | grep Done | \
        awk '{print $1}' | xargs -n 1 -I % transmission-remote -t % -r ;} #clear completed
tsm() { transmission-remote --list ;}
	# numbers of ip being blocked by the blocklist
	# credit: smw from irc #transmission-status
tsmcnt() { echo "Blocklist rules:" $(curl -s --data \
	'{"method": "session-get"}' localhost:9091/transmission/rpc -H \
	"$(curl -s -D - localhost:9091/transmission/rpc | grep X-Transmission-Session-Id)" \
	| cut -d: -f 11 | cut -d, -f1) ;} #tsm-count
# demo video: http://www.youtube.com/watch?v=TyDX50_dC0M
tsmbl() { $PATH_SCRIPTS/blocklist.sh ;}		# update blocklist
tsmdmn() { transmission-daemon ;} #tsm-daemon
tsmquit() { killall transmission-daemon ;} #killall
tsmaspd() { transmission-remote --alt-speed ;}	# limit bandwidth
tsmanspd() {	transmission-remote --no-alt-speed ;}	# dont limit bandwidth
tsmadd() { transmission-remote --add "$1" ;} #add torrent
tsmaskp() { transmission-remote -t"$1" --reannounce ;} #ask peers
tsmstop() { transmission-remote -t"$1" --stop ;}		# <id> or all
tsmstart() { transmission-remote -t"$1" --start ;}		# <id> or all
tsmpurge() { transmission-remote -t"$1" --remove-and-delete ;} # delete data also
tsmdel() { transmission-remote -t"$1" --remove ;}		# leaves data alone
tsminfo() { transmission-remote -t"$1" --info ;} #info
tsmspeed() { while true;do clear; transmission-remote -t"$1" -i | grep Speed;sleep 1;done ;}

#tfx-pfx
alias pfx='peerflix -k -f /home/masud/Videos/ptfx'
alias tfx='torrentflix'

#MIS
alias wget="wget -c"
alias weather='curl wttr.in/khagrachari'
alias updb="updatedb"
alias q="exit"
alias math="mathomatic"
alias rit="rtv"
alias calc='python -ic "from __future__ import division; from math import *; from random import *"'
alias nnn='nnn -d'
alias el='elinks'
alias def='sdcv'
alias keep='keepcli'
alias covid='curl https://corona-stats.online?source=2'

#radio
alias bbcb='mpv http://bbcwssc.ic.llnwd.net/stream/bbcwssc_mp1_ws-benga_backup'
alias bbcw='mpv http://bbcwssc.ic.llnwd.net/stream/bbcwssc_mp1_ws-einws_backup'
alias betar='mpv http://as3.digitalsynapsebd.com:8263/;stream.mp3'
alias bhoomi='mpv http://149.56.195.94:8545/stream'
alias bongo='mpv http://radio.bongonet.net:8000/stream2'
alias jago='mpv http://128.199.184.111:12496/stream'
alias wadio='mpv http://162.254.150.34:8201/stream1'
alias dhoni='mpv http://182.160.110.180:1020/'

#bindkey -v

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
