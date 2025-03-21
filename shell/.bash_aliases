alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ack='ack --follow'
alias ag='ag --follow'
alias rg='rg --follow --smart-case'
alias bc='bc -l'


# pip
alias pip-uninstall-all="python -m pip freeze |  perl -pe 's/==.+//g' | xargs -n1 sudo -H python -m pip uninstall -y"
alias pip3-uninstall-all="python3 -m pip freeze |  perl -pe 's/==.+//g' | xargs -n1 sudo -H python3 -m pip uninstall -y"

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

alias trunk='cd "$NOBLEO_ENV_DIR"'
alias view_frames='cd /tmp && rosrun tf2_tools view_frames.py && open frames.pdf && cd -'

alias smach_viewer_docker='xhost +SI:localuser:root
    docker run -it --rm \
        --net=host \
        -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v ~/.ros/dotfiles:/root/.ros/dotfiles \
        --device /dev/dri:/dev/dri \
        --ipc host \
        nobleo/smach_viewer'

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
