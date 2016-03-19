HISTFILE=$HOME/.zsh-history           
HISTSIZE=100000                      
SAVEHIST=100000                     

export EDITOR=nvim
export TERM=xterm-256color
export PATH=/usr/local/texlive/2015/bin/x86_64-darwin/:$PATH

export SSH_AUTH_SOCK=$(launchctl getenv SSH_AUTH_SOCK)
