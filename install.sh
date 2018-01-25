cd ~/

apt-get install software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update

apt-get install python-dev python-pip python3-dev python3-pip

apt-get install neovim git silversearcher-ag exuberant-ctags

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

git clone https://github.com/crypticsymbols/.vim

mkdir ~/.config

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

pip3 install --user neovim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

nvim +PluginInstall +qall
