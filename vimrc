set number
set term=linux
syntax on
command ResetAutoIncrement %s/AUTO_INCREMENT=[0-9]*/AUTO_INCREMENT=1/g
command RemoveAutoIncrement %s/AUTO_INCREMENT=[0-9]*//g

"Tring out autosave
set autowriteall

"Some buffer settings
set wildchar=<Tab> wildmenu wildmode=full

"Some nice settings from Michael Geddes

" Smart tabbing / autoindenting
set undolevels=100
set nocompatible
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
" Allow backspace to back over lines
set backspace=2
set exrc
set tabstop=4
set cino=t0
"I like things quiet
set visualbell
" Give some room for errors
set cmdheight=2
" always show a status line
au VimEnter * set laststatus=2
set ruler
" start pagescrolling in middle of the page
set scrolloff=999
" detect filetypes
filetype on
" Add automatic parenthesis and brackets
autocmd FileType php inoremap ( ()<Esc>i
autocmd FileType php inoremap { {<CR>}<Esc>ko
" Add automatic php tags
autocmd FileType php inoremap <? <?php ?><Esc><Left>i
"Add sudo saving ability
cmap w!! %!sudo tee > /dev/null %
"Moar colors
"set t_Co_256
" Add auto phpdoc generator
source ~/.vim/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR>
" Check syntax with CTRL-L
autocmd FileType php noremap <C-L> :!/opt/local/bin/php -l <CR>
