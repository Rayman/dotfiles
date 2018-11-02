alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ack='ack --follow'
alias ag='ag --follow'


# svn
function svndiff () { svn diff $@ | colordiff | less -r; }
function svnclean () {
	svn status --no-ignore | grep -E '(^\?)|(^\I)' | sed -e 's/^. *//' | sed -e 's/\(.*\)/"\1"/' | xargs rm -rf
}

alias docker="sudo docker"
alias docker-remove-all-images='docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")'
#alias docker-remove-all-images='docker rmi $(docker images -q)'
alias docker-cleanup='docker rm $(docker ps -qa)'
alias open="xdg-open"
alias retry='while [ $? -ne 0 ] ; do fc -s ; done'
function zoek () { find . -iname "$1"; }

alias trunk='roscd && cd ../src'
alias view_frames='cd /tmp && rosrun tf view_frames && open frames.pdf && cd -'
