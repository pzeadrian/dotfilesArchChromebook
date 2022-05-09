cp  $HOME/.config/nvim/coc-settings.json $HOME/Documents/configNeovim/Linux
cp -R $HOME/.config/nvim/configs $HOME/Documents/configNeovim/Linux
cp  $HOME/.config/nvim/init.vim $HOME/Documents/configNeovim/Linux
cp  $HOME/.config/nvim/plug.vim $HOME/Documents/configNeovim/Linux

cd $HOME/Documents/configNeovim/
git add -A
git commit -m "Updating config for Linux"
git push
