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

source ~/.dotfiles/configs/nushell/custom-completions/cargo.nu
source ~/.dotfiles/configs/nushell/custom-completions/docker.nu
source ~/.dotfiles/configs/nushell/custom-completions/git.nu
source ~/.dotfiles/configs/nushell/custom-completions/jj.nu
source ~/.dotfiles/configs/nushell/custom-completions/rustup.nu
source ~/.dotfiles/configs/nushell/custom-completions/ssh.nu
source ~/.dotfiles/configs/nushell/custom-completions/uv.nu
source ~/.dotfiles/configs/nushell/custom-completions/wireguard.nu

source ~/.dotfiles/configs/nushell/themes/catppuccin-macchiato.nu

