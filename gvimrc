set guifont=Inconsolata\ For\ Powerline:h14

set guioptions-=r
set go-=L

set colorcolumn=80

set bg=dark
colorscheme seoul256


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
autocmd InsertCharPre * match ExtraWhitespace2 /\s\+\%#/
autocmd InsertLeave * match ExtraWhitespace /\s\+\%#\@<!$/
