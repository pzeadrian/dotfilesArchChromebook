#! /bin/bash

cp -R $HOME/.config/alacritty $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/bspwm $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/init_session $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/polybar $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/sxhkd $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/X11 $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/zsh $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/ranger $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/picom $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp -R $HOME/.config/rofi $HOME/Documentos/dotfilesArchChromebook/2_DesktopGUI/
cp $HOME/.dotfiles.sh $HOME/Documentos/dotfilesArchChromebook/sync-scripts/
cp $HOME/.neovim.sh $HOME/Documentos/dotfilesArchChromebook/sync-scripts/

cd $HOME/Documentos/dotfilesArchChromebook
git add -A
git commit -m "Updating configs"
git push
cd
echo "--> Executing neovim sync"
./.neovim.sh
