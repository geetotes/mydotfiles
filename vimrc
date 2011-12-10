set number
set term=linux
syntax on
command ResetAutoIncrement %s/AUTO_INCREMENT=[0-9]*/AUTO_INCREMENT=1/g
command RemoveAutoIncrement %s/AUTO_INCREMENT=[0-9]*//g

"Tring out autosave
set autowrite

"Some buffer settings
set wildchar=<Tab> wildmenu wildmode=full

"Some nice settings from Michael Geddes

" Smart tabbing / autoindenting
set undolevels=100
set nocompatible
set autoindent
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

