syntax on

color delek

set tabstop=4 shiftwidth=4 softtabstop=4 modeline
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
au FileType python      setl ts=8 sw=4 sts=4

"Keep 80 columns.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

