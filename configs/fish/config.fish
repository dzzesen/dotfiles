starship init fish | source

set -gx fish_greeting

fish_hybrid_key_bindings

bind -M insert \cn down-or-search
bind -M insert \cp up-or-search

abbr -a j 'joshuto'
abbr -a dm 'python manage.py'
abbr -a ll 'lsd -la'
abbr -a ap 'source .venv/bin/activate.fish'
abbr -a dp 'deactivate'
abbr -a cdb 'cd ~/dev/birthdaybot'
abbr -a cdc 'cd ~/dev/dotfiles'

direnv hook fish | source

fish_add_path ~/.cargo/bin