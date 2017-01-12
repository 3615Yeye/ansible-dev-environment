# CLI utils
alias ll='ls -l'
alias lla='ls -la'
alias llrt='ls -lrt'

alias please='sudo'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

alias low='lowriter'
alias lowro='lowriter --view'
alias loc='localc'
alias locro='localc --view'

# Safety first ;)
function rm() {
    if [ "$#" -gt 0 -a "$1" = "-rf" ] && ([ "$#" -gt 1 -a "$2" = "typo3conf" ] || [ "$#" -gt 1 -a "$2" = "typo3conf/" ]); then
        /bin/echo "Nope, tu es probablement en train de faire une connerie" && sleep 5
    else
        /bin/rm $*
    fi
}
