starship init fish | source

set -U fish_greeting

# start the ssh-agent service
# systemctl --user enable --now ssh-agent
set -Ux SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
if test -S $SSH_AUTH_SOCK
    ssh-add -l >/dev/null 2>&1; \
    or ssh-add \
    ~/.ssh/aeza_my \
    ~/.ssh/birthdaybot.pem \
    ~/.ssh/bitbucket_rt \
    ~/.ssh/common-ssh-tunnel.pem \
    ~/.ssh/slack-ssh-tunnel.pem \
    ~/.ssh/timebot.pem \
    ~/.ssh/uptimebot.pem
end

fish_hybrid_key_bindings

bind -M insert \cn down-or-search
bind -M insert \cp up-or-search

alias j=joshuto

