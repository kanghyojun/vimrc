set nocompatible
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'AutoComplPop'
Bundle 'Solarized'

" git repo
Bundle 'sjl/gundo.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'mileszs/ack.vim'

filetype plugin indent on

syntax on

set tabstop=2 shiftwidth=2 softtabstop=2 modeline
set fileformat=unix backspace=2
set autoindent smartindent expandtab
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr

set ofu=syntaxcomplete#Complete

au FileType ruby        setl ts=2 sw=2 sts=2
au FileType yaml        setl ts=2 sw=2 sts=2
au FileType html        setl ts=2 sw=2 sts=2
au FileType haml        setl ts=2 sw=2 sts=2
au FileType php         setl ts=2 sw=2 sts=2
au FileType sql         setl ts=2 sw=2 sts=2
au FileType javascript  setl ts=2 sw=2 sts=2
au FileType python      setl ts=4 sw=4 sts=4

"Keep 80 columns.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
highlight ExtraWhitespace2 ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/
match ExtraWhitespace2 /\s\+\%#/
autocmd WinEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd WinEnter * match ExtraWhitespace2 /\s\+\%#/
autocmd InsertChange * match ExtraWhitespace2 /\s\+\%#/
autocmd InsertLeave * match ExtraWhitespace /\s\+\%#\@<!$/

set laststatus=2

map tt :FufFile<CR>
nnoremap <F5> :GundoToggle<CR>
vnoremap <F7> "zy:Ack <C-r>z .<CR>

set noeb vb t_vb=
autocmd GUIEnter * set vb t_vb=

let g:airline_powerline_fonts=1

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,javascript  let b:comment_leader = '// '
autocmd FileType sh,ruby,python               let b:comment_leader = '# '
autocmd FileType conf,fstab                   let b:comment_leader = '# '
autocmd FileType tex                          let b:comment_leader = '% '
autocmd FileType mail                         let b:comment_leader = '> '
autocmd FileType vim                          let b:comment_leader = '" '
autocmd Filetype sql                          let b:comment_leader = '-- '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
