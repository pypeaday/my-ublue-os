#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install screen

# this would install a package from rpmfusion
rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket

# packages/applications
brew install stow
brew install neovim
brew install gitui
brew install helm
brew install kubectl
brew install ansible

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo usermod --shell /usr/bin/zsh nic

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh


flatpak install flathub org.signal.Signal


# clone my dotfiles and then run script to stow stuff after install script every startup
# sudo zpool import -d /dev/disk/by-id/ata-CT2000BX500SSD1_2412E8A01967-part1 tank #-f
# echo "https://flameshot.org/docs/installation/installation-linux/#appimage for installing flameshot"