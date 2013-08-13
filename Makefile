all: install

install: leave_orig setup install_vundle copy build_vundle install_powerline_font

leave_orig:
	if test -s $$HOME/.vimrc; then cp $$HOME/.vimrc $$HOME/.vimrc.orig; fi; \
	if test -s $$HOME/.gvimrc; then cp $$HOME/.vimrc $$HOME/.gvimrc.orig; fi; \
	if test -d $$HOME/.vim; then cp -r $$HOME/.vim $$HOME/.vim.orig; fi;

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

install_powerline_font:
	wget https://github.com/Lokaltog/powerline-fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf -o $$HOME/Library/Fonts/Inconsolata\ For\ Powerline.otf
