# Adriel's desktop experience Super Duper Pack
I'm sharing my Personalized Desktop experience for Gnome on Fedora!

This repo functions more like a personal journal of what I use and how I use it. Can come in handy for my personal use.
It can be useful for you as well if you want to try some aspects of my desktop configuration, also can reuse the installer scripts for your own repository! (yayyy lets fork!!)

# Installation

Follow in this order

## Install repos

This will add extra configurations to dnf, add rpmfusion free and nonfree, flathub for flatpak and add microsoft repo for vscode (*sigh* yes, they won)

```
sudo sh repo_installer
```

## Install apps

This will install programs listed in the files, you can check them out before installing.

```
sudo sh app_installer dnf app_list/dnf.install.txt
sudo sh app_installer flatpak app_list/flatpak.install.txt
sudo sh etc_installer 
```

## Install Dotfiles 

The dotfiles folders is a submodule of this repo (it means that it has it's own repo) but it is constantly updated.

To install them:
```
cd dotfiles
stow -v -t ~ -A */
```
The -A flag will make stow automatically replace files in the target directory with links to files in the stow directory, even if the files already exist. Wich is convenient after installing the programs.

### Tilix configuration

```
dconf load /com/gexperts/Tilix/ < conf/tilix/tilix.dconf
```

## Install Fonts

This font is meant to be used in terminal emulators.

```
sh fonts_installer fonts/
```

## Install GTK Theme

It requires manual steps in order to install this, they are in a README file in "GTK Theme" folder but they are here too:

1. Download Gradiance -> flatpak recommended
2. Once installed, open it.
3. Click on "Presets" (Samples icon) -> "Manage presets" -> "Import" Button -> Select the "SolarizedDarkAdriel.json" file

This theme is Solarized Dark preset but with lighter whiter text color.

## Install Wallpapers

```
sh wallpapers_installer.sh 
```
It will ask you to copy or create a symbolic link to the Wallpapers folder.

## Install Templates

They are here because it is more easy for me, if you want to use them then go head. Just copy them to your Templates folder. It's non mandatory

> *Note:* Spanish language only

