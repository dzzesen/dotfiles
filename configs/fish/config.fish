starship init fish | source

set -U fish_greeting

if status is-login
    keychain --eval --quiet --agents ssh \
        ~/.ssh/aeza_my \
        ~/.ssh/bitbucket_rt \
        ~/.ssh/common-ssh-tunnel.pem \
        ~/.ssh/slack-ssh-tunnel.pem \
        ~/.ssh/birthdaybot.pem \
        ~/.ssh/timebot.pem \
        ~/.ssh/uptimebot.pem \
    | source
end

fish_hybrid_key_bindings

bind -M insert \cn down-or-search
bind -M insert \cp up-or-search

alias j=joshuto

