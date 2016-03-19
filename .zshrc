source ~/.zplug/zplug

# Make sure you use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Support oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "plugins/github",   from:oh-my-zsh, if:"which git"
zplug "plugins/tmuxinator",   from:oh-my-zsh, if:"which git"
zplug "themes/sorin", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# Support checking out a specific branch/tag/commit of a plugin
zplug "b4b4r07/enhancd", of:enhancd.sh
zplug "mollifier/anyframe"

# Set priority to load command like a nice command
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting"

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    file:fzf, \
    of:"*darwin*amd64*"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

zstyle ":anyframe:selector:" use fzf
bindkey '^r' anyframe-widget-execute-history
alias vi=nvim
eval "$(hub alias -s)"

[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
