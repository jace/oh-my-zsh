## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
autoload -U zmv
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pretty man pages
function pman() {
    man $1 -t | open -f -a Preview
}

## pretty JSON
function pj() {
    python -mjson.tool
}

## Quick-look a file (^C to close)
alias ql='qlmanage -p 2>/dev/null'

## Color grep results
## Examples: http://rubyurl.com/ZXv
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
## pager
export PAGER="less"
export LESS="-R"

export LC_CTYPE=$LANG
