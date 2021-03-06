set number
set term=linux
syntax on
command ResetAutoIncrement %s/AUTO_INCREMENT=[0-9]*/AUTO_INCREMENT=1/g
command RemoveAutoIncrement %s/AUTO_INCREMENT=[0-9]*//g

"Tring out autosave
set autowriteall

"Some buffer settings
set wildchar=<Tab> wildmenu wildmode=full

"Goodbye dbtext plugin
"let g:loaded_dbtext=0
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
" Indent filetype
filetype indent on
" Add automatic parenthesis and brackets
" autocmd FileType php inoremap ( ()<Esc>i
" autocmd FileType php inoremap { {<CR>}<Esc>ko
"Man highlight search is annoying
set nohlsearch
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
" Does this make me a bad person?
set nobackup
set nowritebackup
set noswapfile

" Spellcheck and bracket settings from:
" http://blog.bodhizazen.net/linux/command-line-spell-checking/
" Show matching [] and {}
set showmatch

" " Spell check on
set spell spelllang=en_us
setlocal spell spelllang=en_us
"
" " Toggle spelling with the F7 key
nn <F7> :setlocal spell! spelllang=en_us<CR>
imap <F7> <C-o>:setlocal spell! spelllang=en_us<CR>
"
" " Spelling
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" " where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'

" " Adding jslint hinting from
" https://github.com/hallettj/jslint.vim
filetype plugin on
"
"
" syntastic is the best
call pathogen#infect()
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" make sure weird ruby jst templates show up as html
au BufReadPost *.ejs set syntax=html
au BufReadPost *.ejs set filetype=html
