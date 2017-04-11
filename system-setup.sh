sudo apt-get update
sudo apt-get install vim
sudo add-apt-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish
sudo apt-get install rxvt-unicode-256color
sudo ln -s /mnt/c/Users/bkgok/ win
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
curl -L http://get.oh-my.fish | fish
sudo apt-get install fontconfig
git clone https://github.com/powerline/fonts
sudo bash fonts/install.sh
rm -rf molokai
rm -rf fonts
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo apt-get install python-numpy
sudo apt-get install python-scipy
