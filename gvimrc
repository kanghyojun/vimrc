set guifont=Inconsolata\ For\ Powerline:h14

set guioptions-=r
set go-=L

set colorcolumn=80

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/

set bg=light
colorscheme solarized

let g:airline_theme='solarized'
