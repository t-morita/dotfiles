source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"

zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "plugins/github",   from:oh-my-zsh, if:"which git"
zplug "plugins/tmuxinator",   from:oh-my-zsh, if:"which git"
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


zstyle ":anyframe:selector:" use fzf
bindkey -e
bindkey '^r' anyframe-widget-execute-history
alias vi=nvim
eval "$(hub alias -s)"
eval `ssh-agent`

[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux -u

export PYENV_ROOT="${HOME}/.pyenv"
export PATH=${PYENV_ROOT}/bin:$PATH
eval "$(pyenv init -)"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
