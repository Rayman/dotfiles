alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ack='ack --follow'
alias ag='ag --follow'
alias bc='bc -l'


# svn
function svndiff () { svn diff $@ | colordiff | less -r; }
function svnclean () {
	svn status --no-ignore | grep -E '(^\?)|(^\I)' | sed -e 's/^. *//' | sed -e 's/\(.*\)/"\1"/' | xargs rm -rf
}

alias docker-cleanup='docker rm $(docker ps -qa)'
alias docker-remove-none-images='docker images -qf=dangling=true | xargs --no-run-if-empty docker rmi'
alias open="xdg-open"
alias retry='while [ $? -ne 0 ] ; do fc -s ; done'
function zoek () { find . -iname "$1"; }

alias trunk='roscd && cd ../repos/project-*'
alias view_frames='cd /tmp && rosrun tf view_frames && open frames.pdf && cd -'

# -r --recursive
# -l --links
# -p --perms
# -t --times
# -g --group
# -o --owner
# -D --devices --specials

function catkin-push () {
	(
		_REMOTE_HOSTNAME=$(python3 -c 'import os; from urllib.parse import urlparse; print(urlparse(os.environ["ROS_MASTER_URI"]).hostname)')
		_WS_LOCAL=$(catkin locate)
		_WS_REMOTE=$(ssh "ruvu@$_REMOTE_HOSTNAME" catkin locate)
		set -x
		rsync -rlc --delete --cvs-exclude "$_WS_LOCAL/repos/" "ruvu@$_REMOTE_HOSTNAME:$_WS_REMOTE/repos/" "$@"
	)
}

function catkin-pull () {
	(
		_REMOTE_HOSTNAME=$(python3 -c 'import os; from urllib.parse import urlparse; print(urlparse(os.environ["ROS_MASTER_URI"]).hostname)')
		_WS_LOCAL=$(catkin locate)
		_WS_REMOTE=$(ssh "ruvu@$_REMOTE_HOSTNAME" catkin locate)
		set -x
		rsync -rlc --delete --cvs-exclude "ruvu@$_REMOTE_HOSTNAME:$_WS_REMOTE/repos/" "$_WS_LOCAL/repos/" "$@"
	)
}
