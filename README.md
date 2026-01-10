<img width=151 height=50 align=right src="https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png">

## Installation

These dotfiles use [Dotbot](https://github.com/anishathalye/dotbot) for installation.


Set up wifi:
```bash
paru -S iwd dhcpcd openresolv impala

# disable nm service
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

# enable iwd service
sudo systemctl enable --now iwd

# set up dhcp
sudo systemctl enable --now dhcpcd@wlan0.service  # get station name 'iwctl station list'
sudo systemctl enable --now dhcpcd  # or start the daemon for all newtwork interfaces

# connect
impala
```

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
paru -S bluez bluez-utils brightnessctl curl gnome-keyring gzip man-db man-pages pavucontrol pulseaudio pulseaudio-bluetooth sqlite tar wget wireguard-tools wl-clipboard unzip xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite
```

Install workspace packages:
```bash
paru -S bluetui fuzzel grim keyd satty slurp swaybg swayidle swaylock swaync waybar
```

Install fonts, emojies and icons:
```bash
paru -S otf-myna noto-fonts-emoji papirus-icon-theme 
```

Install terminal packages:
```bash
paru -S btop gitui lsd nvim pgcli starship
paru -S josuto   # file manager
paru -S mdfried  # a markdown viewer
paru -S oxker    # a simple tui to view & control docker containers
paru witr        # why it run
```

Install gui packages:
```bash
paru -S another-redis-desktop-manager-appimage blender bkeeper-studio-bin discord foot gimp godot obs-studio slack-desktop telegram-desktop vivaldi
paru haruna      # video player 
```

Install packages for coding:
```bash
paru -S bore cloudflared docker docker-compose luarocks nix npm marksman pre-commit rustup uv
```

Run installation:
```bash
./install
sudo ./install
```
