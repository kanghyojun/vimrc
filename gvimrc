set guifont=Menlo:h13

set guioptions-=r
set go-=L

set colorcolumn=80

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

colorscheme solarized
set bg=light
