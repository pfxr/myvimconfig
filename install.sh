VIM_CONFIG=`pwd`

apt install vim
git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim

cd
rm -rf .vim
rm -rf .vimrc
ln -s $VIM_CONFIG/.vim
ln -s $VIM_CONFIG/.vimrc
cd $VIM_CONFIG
