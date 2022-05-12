cp  $HOME/.config/nvim/coc-settings.json $HOME/Documentos/configNeovim/Linux/nvim/
cp -R $HOME/.config/nvim/configs $HOME/Documentos/configNeovim/Linux/nvim/
cp  $HOME/.config/nvim/init.vim $HOME/Documentos/configNeovim/Linux/nvim/
cp  $HOME/.config/nvim/plug.vim $HOME/Documentos/configNeovim/Linux/nvim/
cp $HOME/.neovim.sh $HOME/Documentos/configNeovim/Linux/sync-script/

cd $HOME/Documentos/configNeovim/
git add -A
git commit -m "Updating config for Linux"
git push
