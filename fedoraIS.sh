#! bin/bash

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf update @core -y

sudo dnf install rpmfusion-\*-appstream-data -y

sudo dnf group install multimedia -y


sudo rm -rf /etc/dnf/dnf.conf

git clone https://github.com/khan-debug/conf-files.git
cd conf-files

sudo mv dnf.conf /etc/dnf/dnf.conf
cd ..
rm -rf conf-files


sudo dnf update -y
