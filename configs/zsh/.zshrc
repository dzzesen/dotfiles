PATH=$HOME/.local/bin:$PATH
PATH="$HOME/.cargo/bin:$PATH"

export PIPENV_VENV_IN_PROJECT=1


eval "$(starship init zsh)"
eval "$(atuin init zsh)"
eval $(ssh-agent) > /dev/null


unsetopt hist_save_by_copy
unsetopt inc_append_history
setopt share_history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


alias apv="source .venv/bin/activate"
alias dpv="deactivate"
alias ls="ls --color=auto"
function dockerps {
    docker ps $@ --format '{ "ID":"{{.ID}}", "Names":"{{.Names}}", "Status":"{{.Status}}", "State":"{{.State}}", "Size":"{{.Size}}", "Networks":"{{.Networks}}", "Ports":"{{.Ports}}", "CreatedAt":"{{.CreatedAt}}" }' | jq
}
alias j="joshuto"
alias g="git"
alias l="lsd -lA"
alias h="helix"
alias cdbirthdaybot="cd ~/Projects/birthdaybot"
alias cddotfiles="cd ~/Projects/dotfiles"
alias cdnotes="cd ~/Notes"

export GROFF_NO_SGR=1
export LESS=\
"--RAW-CONTROL-CHARS "\
"--use-color "\
"--color=My$ "\
"--color=Pkg$ "\
"--color=Sy$ "\
"--color=d+b$ "\
"--color=k+y$ "\
"--color=s+r$ "\
"--color=u+g$ "


autoload -Uz add-zsh-hook

foot_integration() {
    # Jumping between prompts
    print -Pn "\e]133;A\e\\"
}

add-zsh-hook precmd foot_integration


# Plug in plugins

# zsh-vi-mode
source $HOME/.dotfiles/plugins/zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_VI_SURROUND_BINDKEY=s-prefix
ZVM_VI_HIGHLIGHT_FOREGROUND=yellow
ZVM_VI_HIGHLIGHT_BACKGROUND=blue

# zsh-autosuggestions
source $HOME/.dotfiles/plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#zsh-syntax-highlighting
# plug in syntax highlighting at the end of .zshrc
source $HOME/.dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-history-substring-search
source $HOME/.dotfiles/plugins/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh


# Key bindings

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
