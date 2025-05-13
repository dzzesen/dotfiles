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
paru -S mesa nvidia-dkms vulkan-radeon vulkan-tools

# Install display manager
paru -S ly

# Install compositor
paru -S niri

# Install important packages
paru -S bluez bluez-utils brightnessctl gnome-keyring networkmanager pavucontrol pulseaudio pulseaudio-bluetooth wireguard-tools xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite

# Install workspace packages
paru -S blueman fuzzel keyd network-manager-applet papirus-icon-theme swaybg swayidle swaync ttf-hack-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono waybar

# Install command line packages
paru -S btop jq neovim starship vim yazi zsh

# Install gui packages
paru -S firefox kitty obs-studio slack-desktop-wayland telegram-desktop totem wezterm zed

# Install packages for coding
paru -S bore cloudflared docker docker-compose luarocks npm pre-commit pyright ruff ruff-lsp rustup uv

# Alternatively, install all packages with a single command
paru -S blueman bluez bluez-utils bore brightnessctl btop cloudflared docker docker-compose firefox fuzzel git gnome-keyring jq keyd kitty luarocks ly mesa neovim network-manager-applet networkmanager niri npm nvidia-dkms obs-studio papirus-icon-theme pavucontrol pre-commit pulseaudio pulseaudio-bluetooth pyright ruff ruff-lsp rustup slack-desktop-wayland starship swaybg swayidle swaync telegram-desktop totem ttf-hack-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono uv vim vulkan-radeon vulkan-tools waybar wezterm wireguard-tools xdg-desktop-portal-gnome xdg-desktop-portal-wlr xwayland-satellite yazi zed zsh

# You can run these installation command safely multiple times.
./install
sudo ./install
```
