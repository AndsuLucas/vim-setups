sudo apt remove vim-tiny
sudo apt update
sudo apt install vim-gtk3
sudo apt install vim-nox
vim --version | grep clipboard

sudo mv -f .vimrc ~/.vimrc
echo ".vimrc was changed"

