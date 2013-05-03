all: install clean

install: leave_orig copy download

download: mk_vim_dir download_syntax download_plugins
	rm -rf $$HOME/.vim/vim_plugins

leave_orig:
	if test -s $$HOME/.vimrc; then cp $$HOME/.vimrc $$HOME/.vimrc.orig; echo "Copy .vimrc into .vimrc.orig"; fi; \
	if test -d $$HOME/.vim; then cp -r $$HOME/.vim $$HOME/.vim.orig; echo "Copy .vim into .vim.orig"; fi

mk_vim_dir:
	mkdir -p $$HOME/.vim/autoload/; \
	mkdir -p $$HOME/.vim/syntax/; \
	mkdir -p $$HOME/.vim/doc/; \
	mkdir -p $$HOME/.vim/plugin/;
	mkdir -p $$HOME/.vim/vim_plugins/; \

download_scala: 
	cd $$HOME/.vim/vim_plugins; \
	curl -L https://github.com/scala/scala-dist/archive/master.zip \
		 -o scala_dist.zip;
	unzip scala_dist.zip; \
	cp -r ./scala-dist-master/tool-support/src/vim/ftdetect $$HOME/.vim/; \
	cp -r ./scala-dist-master/tool-support/src/vim/indent   $$HOME/.vim/; \
	cp ./scala-dist-master/tool-support/src/vim/plugin/* $$HOME/.vim/plugin/; \
	cp ./scala-dist-master/tool-support/src/vim/syntax/* $$HOME/.vim/syntax/;

download_syntax: download_scala
	cd $$HOME/.vim/syntax/; \
	curl -O http://leafo.net/lessphp/vim/less.vim \
		 https://gist.github.com/raw/256840/html5.vim -o html.vim \

download_plugins:	
	cd $$HOME/.vim/vim_plugins; \
	curl -L https://github.com/Townk/vim-autoclose/archive/master.zip \
	     -o autoclose.zip \
		 -L https://bitbucket.org/ns9tks/vim-l9/get/tip.zip \
		 -o l9.zip \
	     -L https://bitbucket.org/ns9tks/vim-autocomplpop/get/tip.zip \
		 -o acp.zip; \
	unzip -d autoclose autoclose.zip; \
	unzip -d acp acp.zip; \
	unzip -d l9 l9.zip; \
	mv ./l9/*/autoload/* $$HOME/.vim/autoload/; \
	cp ./l9/*/doc/* $$HOME/.vim/doc/; \
	cp ./l9/*/plugin/* $$HOME/.vim/plugin/; \
	mv ./acp/*/autoload/* $$HOME/.vim/autoload/; \
	cp ./acp/*/doc/* $$HOME/.vim/doc/; \
	cp ./acp/*/plugin/* $$HOME/.vim/plugin/; \
	cp ./autoclose/*/doc/* $$HOME/.vim/doc/; \
	cp ./autoclose/*/plugin/* $$HOME/.vim/plugin/; \

copy: 
	cp vimrc $$HOME/.vimrc

clean:
	rm -rf $$HOME/.vimrc
	rm -rf $$HOME/.vim
