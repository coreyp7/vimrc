
eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"

export PS1='\u@\H:\w$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

. "$HOME/.cargo/env"

alias la='ls -la'
alias gits='git status'

# rust stuff
alias check='cargo check'
alias run='cargo run'
alias build='cargo build'

# Get linecount of all files in directory (recursively).
# $1: path of dir
# $2: file extension to count
linecount() {
    local target_dir="${1}"
    local filetype="*.${2}"
    #find $target_dir -name "*.rs" -exec wc -l {} + | sort -n
    find $target_dir -name $filetype -exec wc -l {} + | sort -n
}

# Added during Jekyll setup guide
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.4.1