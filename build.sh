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

# systemctl enable podman.socket

# for syncoid/sanoid
rpm-ostree install perl-Config-IniFiles perl-Data-Dumper perl-Capture-Tiny perl-Getopt-Long lzop mbuffer mhash pv -- --allow-inactive
rpm-ostree install perl-CPAN perl-CPAN

# zsh
rpm-ostree install zsh 
# TODO: oh my zsh in install script too... oof
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# TODO: also make this a dotfiles install script thing
# git clone https://github.com/zsh-users/zsh-autosuggestions /var/home/nic/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# TODO: do this in a dotfiles install script
# sudo usermod --shell /usr/bin/zsh nic

# uv

# TODO: probably this too
# curl -LsSf https://astral.sh/uv/install.sh | sh


# TODO: failed build?
# flatpak install flathub org.signal.Signal

# packages/applications
# brew install stow
# brew install neovim
# brew install gitui
# brew install helm
# brew install kubectl
# brew install ansible

# clone my dotfiles and then run script to stow stuff after install script every startup
# sudo zpool import -d /dev/disk/by-id/ata-CT2000BX500SSD1_2412E8A01967-part1 tank #-f
# echo "https://flameshot.org/docs/installation/installation-linux/#appimage for installing flameshot"