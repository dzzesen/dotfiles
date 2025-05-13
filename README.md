<img width=150 height=50 align=right src="https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png">

# Dotfiles

## Installing

These dotfiles use [Dotbot](https://github.com/anishathalye/dotbot) for installation.


## Installation

```bash
# Install git
sudo pacman -S git

# Install paru package manager
sudo pacman -S --needed base-devel
cd ~/Downloads
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Install drivers
aura -S mesa nvidia-dkms vulkan-radeon vulkan-tools

# Install display manager
aura -S ly

# Install compositor
aura -S niri

# Install important packages
aura -S bluez bluez-utils brightnessctl gnome-keyring networkmanager pulseaudio pulseaudio-bluetooth wireguard-tools xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite

# Install workspace packages
aura -S blueman fuzzel keyd nautilus network-manager-applet swaybg swayidle swaync ttf-hack-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono waybar

# Install command line packages
aura -S btop jq neovim starship vim yazi zsh

# Install gui packages
aura -S firefox kitty obs-studio telegram-desktop totem wezterm zed

# Install packages for coding
aura -S bore cloudflared docker docker-compose nodejs npm pre-commit pyright ruff rustup uv

# Alternatively, install all packages with a single command
aura -S blueman bluez bluez-utils bore brightnessctl btop cloudflared docker docker-compose firefox fuzzel git gnome-keyring jq keyd kitty ly mesa nautilus neovim network-manager-applet networkmanager niri nodejs npm nvidia-dkms obs-studio pre-commit pulseaudio pulseaudio-bluetooth pyright ruff rustup starship swaybg swayidle swaync telegram-desktop totem ttf-hack-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono uv vim vulkan-radeon vulkan-tools waybar wezterm wireguard-tools xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite yazi zed zsh

# You can run these installation command safely multiple times.
./install
sudo ./install
```
