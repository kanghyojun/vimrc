all: install

install: leave_orig setup install_vundle copy build_vundle 

leave_orig:
	if test -s $$HOME/.vimrc; then cp $$HOME/.vimrc $$HOME/.vimrc.orig; echo -e "\033[0;31mCopy .vimrc into .vimrc.orig\e[0m\"; fi; \
	if test -s $$HOME/.gvimrc; then cp $$HOME/.vimrc $$HOME/.gvimrc.orig; echo -e "\033[0;31mCopy .gvimrc into .gvimrc.orig\e[0m\"; fi; \
	if test -d $$HOME/.vim; then cp -r $$HOME/.vim $$HOME/.vim.orig; echo -e "\033[0;31mCopy .vim into .vim.orig\e[0m\"; fi

setup:
	rm -rf $$HOME/.vimrc
	rm -rf $$HOME/.vim
	rm -rf $$HOME/.gvimrc
	mkdir -p $$HOME/.vim

copy: 
	cp vimrc $$HOME/.vimrc
	cp gvimrc $$HOME/.gvimrc

install_vundle:
	mkdir -p $$HOME/.vim/bundle/
	mkdir -p $$HOME/.vim/bundle/vundle
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

build_vundle:
	vim +BundleInstall +qall
