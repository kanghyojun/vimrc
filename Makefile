install: copy download

download: download_color download_syntax

download_color:
	mkdir -p $$HOME/.vim/colors/; \
	cd $$HOME/.vim/colors/; \
	curl -L http://www.vim.org/scripts/download_script.php?src_id=12437 \
	     -o vividchalk.vim

download_syntax: 
	mkdir -p $$HOME/.vim/syntax/; \
	cd $$HOME/.vim/syntax/; \
	curl -L http://www.vim.org/scripts/download_script.php?src_id=8461 \
		 -o haml.vim \
		 -O http://leafo.net/lessphp/vim/less.vim \
		 https://gist.github.com/raw/256840/html5.vim -o html.vim

copy: 
	cp vimrc $$HOME/.vimrc

