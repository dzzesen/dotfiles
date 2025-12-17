use std/util "path add"

$env.config.buffer_editor = "helix"
$env.EDITOR = "helix"
$env.CARGO_HOME = "~/.cargo"
$env.VIRTUAL_ENV_DISABLE_PROMPT = true

path add "~/.local/bin"
path add ($env.CARGO_HOME | path join "bin")

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

source ~/.dotfiles/plugins/nu_scripts/custom-completions/git/git-completions.nu
