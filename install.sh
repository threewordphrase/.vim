cd ~/

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update

sudo apt-get install -y neovim silversearcher-ag curl

mkdir -p ~/.config/nvim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

pip3 install --user neovim

# For deoplete python completion
pip install jedi

# for deoplete js completion
# npm install -g tern

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

nvim -c :silent\! +PluginInstall +UpdateRemotePlugins +qall

echo "*****************************************************************"
echo "*"
echo "*"
echo "*  Install tern: cd ~/.vim/bunde/tern_for_vim && npm install tern"
echo "*"
echo "*"
echo "*****************************************************************"
