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

Install video drivers:
```bash
paru -S mesa vulkan-radeon
```

Install display manager:
```bash
paru -S ly
```

Install compositor:
```bash
paru -S niri
```

Install important packages:
```bash
paru -S bluez bluez-utils brightnessctl gnome-keyring networkmanager man-db man-pages pavucontrol pulseaudio pulseaudio-bluetooth sqlite wireguard-tools xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite
```

Install workspace packages:
```bash
paru -S blueman fuzzel keyd network-manager-applet noto-fonts-emoji papirus-icon-theme swaybg swayidle swaylock swaync ttf-hack-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono waybar
```

Install terminal packages:
```bash
paru -S atuin btop git-delta jq helix lazygit lsd pgcli pgweb starship yazi zsh
```

Install gui packages:
```bash
paru -S another-redis-desktop-manager-appimage blender boost-note-local-bin chromium flameshot foot godot obs-studio slack-desktop telegram-desktop totem
```

Install packages for coding:
```bash
paru -S bore cloudflared docker docker-compose luarocks npm marksman python-pipenv pre-commit pyright ruff ruff-lsp rustup uv
```

Run installation. You can do it safely multiple times:
```bash
./install
sudo ./install
```
