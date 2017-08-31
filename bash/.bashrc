#aliases

alias ssh='sshrc'
alias ls='ls -G'
alias ll='ls -lG'
alias l='ls -laG'
alias weat='curl -4 "http://wttr.in/toronto"'
alias cleand='docker rm -f $(docker ps -q)'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias pwg='openssl rand -base64 32'
alias sublime="reattach-to-user-namespace sublime"
alias vi='vim'


filtername(){
  jq '.[]  | select(.name | contains("'"$1"'"))';
}

farmfilter(){
  jq '.[]  | select(.'"$1"' | contains("'"$2"'"))';
}

# pretty bash
source ~/.shell_prompt.sh

## completion
if [ -f `brew --prefix`/etc/bash_completion ]; then 
	    . `brew --prefix`/etc/bash_completion 
fi

## git
export GIT_AUTHOR_EMAIL='alexandre@vmfarms.com'

# hh configuration
export HISTSIZE=10000
export HISTFILESIZE=100000
export HH_CONFIG=hicolor,rawhistory,blacklist
export HISTCONTROL=ignorespace
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; settitle `hostname -s`;$PROMPT_COMMAND"
export EDITOR=/usr/local/bin/vim
## rename tmux windows
settitle() {
    printf "\033k$1\033\\"
}

function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'

## if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

## include vmf config if it exists
if [ -f ~/.bash_vmf ]; then
     source ~/.bash_vmf
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.base16-monokai.config ] && source ~/.base16-monokai.config
