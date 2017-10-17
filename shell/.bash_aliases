alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# svn
function svndiff () { svn diff $@ | colordiff | less -r; }
function svnclean () {
	svn status --no-ignore | grep -E '(^\?)|(^\I)' | sed -e 's/^. *//' | sed -e 's/\(.*\)/"\1"/' | xargs rm -rf
}

alias docker="sudo docker"
alias open="xdg-open"
alias retry='while [ $? -ne 0 ] ; do fc -s ; done'
function zoek () { find . -iname "$1"; }
