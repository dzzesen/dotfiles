<img width=151 height=50 align=right src="https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png">

## Installation

These dotfiles use [Dotbot](https://github.com/anishathalye/dotbot) for installation.


Install git:
```bash
sudo pacman -S git
```

Install paru package manager:
```bash
sudo pacman -S --needed base-devel
mkdir ~/Downloads
cd ~/Downloads
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

Install packages:
```bash
paru keyd               # key remapper
paru otf-myna           # terminal font
paru noto-fonts-emoji   # emoji font
paru papirus-icon-theme # icon theme
paru fish               # shell
paru starship           # prompt
paru nvim               # text editor
paru btop               # system monitor
paru lsd                # file listing
paru pgcli              # postgres cli
paru josuto             # file manager
paru witr               # why it run
paru obs-studio         # video recording
paru slack-desktop      # slack desktop
paru telegram-desktop   # telegram desktop
paru vivaldi            # vivaldi browser
paru haruna             # kde video player 
paru gwenview           # kde image viewer
paru cloudflared        # cloudflare tunnel
paru direnv             # environment variable manager
paru podman             # container runtime
paru podman-compose     # container orchestration
paru nix                # package manager
paru npm                # node package manager
paru rustup             # rust toolchain
paru uv                 # python package manager
```

Run installation:
```bash
./install
sudo ./install
```
