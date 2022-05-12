#! /bin/bash

cp -R $HOME/.config/alacritty $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/bspwm $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/init_session $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/polybar $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/sxhkd $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/X11 $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/zsh $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/ranger $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/picom $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp -R $HOME/.config/rofi $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI
cp $HOME/.dotfiles.sh $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI/SYNC.sh
cp $HOME/.neovim.sh $HOME/Documents/dotfilesArchChromebook/2_DesktopGUI/SYNC.sh

cd $HOME/Documents/dotfilesArchChromebook
git add -A
git commit -m "Updating configs"
git push
cd
echo "--> Executing neovim sync"
./.neovim.sh
