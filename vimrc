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
Bundle 'Jinja'
Bundle 'HTML-AutoCloseTag'
Bundle 'Solarized'

" git repo
Bundle 'sjl/gundo.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'

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

set laststatus=2

map tt :FufFile<CR>
nnoremap <F5> :GundoToggle<CR>
