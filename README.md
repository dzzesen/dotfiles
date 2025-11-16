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
paru -S bluez bluez-utils brightnessctl curl gnome-keyring gzip networkmanager man-db man-pages pavucontrol pulseaudio pulseaudio-bluetooth sqlite tar wget wireguard-tools unzip xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite
```

Install workspace packages:
```bash
paru -S blueman fuzzel grim keyd network-manager-applet satty slurp swaybg swayidle swaylock swaync waybar
paru satty  # screenshot annotation
```

Install fonts, emojies and icons:
```bash
paru -S ttf-hack-nerd otf-comicshanns-nerd noto-fonts-emoji papirus-icon-theme 
```

Install terminal packages:
```bash
paru -S atuin btop gitui jq lsd nvim pgcli pgweb starship yazi zsh
```

Install gui packages:
```bash
paru -S another-redis-desktop-manager-appimage blender chromium foot gimp godot obs-studio play-timer slack-desktop telegram-desktop totem
```

Install packages for coding:
```bash
paru -S bore cloudflared docker docker-compose luarocks npm marksman pre-commit rustup uv
```

Run installation. You can do it safely multiple times:
```bash
./install
sudo ./install
```
