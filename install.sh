#!/bin/sh

if [ -f $HOME/.vimrc ];then
echo "mv .vimrc to .vimrc.old"
mv $HOME/.vimrc $HOME/.vimrc.old
ln -s $PWD/tiny_vim/vimrc $HOME/.vimrc
else
echo "install .vimrc"
ln -s $PWD/tiny_vim/vimrc $HOME/.vimrc
fi

if [ -f $HOME/.gitconfig ];then
echo "mv .gitconfig to .gitconfig.old"
mv $HOME/.gitconfig $HOME/.gitconfig.old
ln -s $PWD/gitconfig/gitconfig $HOME/.gitconfig
else
echo "install .gitconfig"
ln -s $PWD/gitconfig/gitconfig $HOME/.gitconfig
fi

if [ -f $HOME/.git-completion.bash ];then
echo "mv .git-completion.bash to .git-completion.bash.old"
mv $HOME/.git-completion.bash $HOME/.git-completion.bash.old
ln -s $PWD/gitconfig/git-completion.bash $HOME/.git-completion.bash
else
echo "install .git-completion.bash"
ln -s $PWD/gitconfig/git-completion.bash $HOME/.git-completion.bash
fi

if [ -f $HOME/.tmux.conf ];then
echo "mv .tmux.conf to .tmux.conf.old"
mv $HOME/.tmux.conf $HOME/.tmux.conf.old
ln -s $PWD/tmux_conf/tmux.conf $HOME/.tmux.conf
else
echo "install .tmux.conf"
ln -s $PWD/tmux_conf/tmux.conf $HOME/.tmux.conf
fi

if [ -f $HOME/.bash_aliases ];then
echo "mv .bash_aliases to .bash_aliases.old"
mv $HOME/.bash_aliases $HOME/.bash_aliases.old
ln -s $HOME/soft_config/bash_aliases $HOME/.bash_aliases
else
echo "install .bash_aiases"
ln -s $HOME/soft_config/bash_aliases $HOME/.bash_aliases
fi

if [ -d $HOME/.vim/bundle/vundle ];then
echo "vundle had cloned before, pass"
else
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
echo "vundle clone done, remember to run BundleInstall vim cmd to install the vim plugin"
fi
