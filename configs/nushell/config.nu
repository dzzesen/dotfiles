use std/util "path add"

$env.config.edit_mode = "vi"
$env.config.buffer_editor = "nvim"
$env.EDITOR = "nvim"
$env.CARGO_HOME = "~/.cargo"
$env.VIRTUAL_ENV_DISABLE_PROMPT = true

path add "~/.local/bin"
path add ($env.CARGO_HOME | path join "bin")

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

source ~/.dotfiles/plugins/nu_scripts/custom-completions/docker/docker-completions.nu
source ~/.dotfiles/plugins/nu_scripts/custom-completions/cargo/cargo-completions.nu
source ~/.dotfiles/plugins/nu_scripts/custom-completions/git/git-completions.nu
source ~/.dotfiles/plugins/nu_scripts/custom-completions/jj/jj-completions.nu
source ~/.dotfiles/plugins/nu_scripts/custom-completions/rustup/rustup-completions.nu
source ~/.dotfiles/plugins/nu_scripts/custom-completions/ssh/ssh-completions.nu
source ~/.dotfiles/plugins/nu_scripts/custom-completions/uv/uv-completions.nu
source ~/.dotfiles/configs/nushell/custom-completions/wireguard.nu

source ~/.dotfiles/plugins/nu_scripts/themes/nu-themes/catppuccin-macchiato.nu

