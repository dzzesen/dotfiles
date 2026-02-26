starship init fish | source

set -gx fish_greeting

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

abbr -a j 'joshuto'
abbr -a dm 'python manage.py'
abbr -a ll 'ls -la'
abbr -a ap 'source .venv/bin/activate.fish'
abbr -a dp 'deactivate'
abbr -a cdb 'cd ~/dev/birthdaybot'
abbr -a cdc 'cd ~/dev/dotfiles'

direnv hook fish | source