syntax on

set tabstop=4 shiftwidth=4 sts=4 modeline
set fileformat=unix backspace=2 autoindent et
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp949,korea,iso-2022-kr
set columns=80

au FileType ruby        setl ts=2 sw=2 sts=2
au FileType yaml        setl ts=2 sw=2 sts=2
au FileType html        setl ts=2 sw=2 sts=2
au FileType haml        setl ts=2 sw=2 sts=2
au FileType php         setl ts=2 sw=2 sts=2
au FileType sql         setl ts=2 sw=2 sts=2
au FileType javascript  setl ts=2 sw=2 sts=2

"Keep 80 columns.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

map ,c :set syntax=css
