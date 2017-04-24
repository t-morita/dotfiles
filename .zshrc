source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"

zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "plugins/github",   from:oh-my-zsh, if:"which git"
zplug "plugins/ssh-agent",   from:oh-my-zsh, if:"which git"
zplug "themes/sorin", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

zplug "mollifier/anyframe"
zplug "felixr/docker-zsh-completion"

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


zstyle ":anyframe:selector:" use fzf
bindkey -e
bindkey '^r' anyframe-widget-execute-history
eval "$(hub alias -s)"

#export PYENV_ROOT="${HOME}/.pyenv"
#export PATH=${PYENV_ROOT}/bin:$PATH
#eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt EXTENDED_HISTORY
setopt share_history
setopt hist_verify
setopt hist_reduce_blanks  
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt inc_append_history

case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -GF"
  ;;
linux*)
  alias ls="ls -F --color"
  ;;
esac

zplug load

