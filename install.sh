cd ~/

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update

sudo apt-get install python-dev python-pip python3-dev python3-pip

sudo apt-get install neovim git silversearcher-ag exuberant-ctags curl

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

mkdir ~/.config

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

pip3 install --user neovim

# For deoplete python completion
pip install jedi

# for deoplete js completion
npm install -g tern

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

nvim +PluginInstall +qall
