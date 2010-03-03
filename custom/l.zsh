unalias l 2> /dev/null
function l() {
    if [ $# -eq 1 ]; then
        if [ -f "$1" ]; then
            less "$1"
            return $?
        fi
    fi
    ls "$@"
}
