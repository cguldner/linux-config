execute pathogen#infect()
" Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !has('gui_running')
   set t_Co=256
endif

let g:dracula_italic = 0

syntax enable
colorscheme dracula

set term=screen-256color

highlight ExtraWhitespace ctermbg=Blue ctermfg=white guibg=#592929
match ExtraWhitespace /\s\+$/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable vi
set nocompatible

" Keybindings
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

set tags+=tags;/
set backupdir=~/tmp,~/,.
set cursorline
set colorcolumn=80,120
set autoindent
set ignorecase   " case insensitive search
set showmatch    " Show matching brackets/parenthesis
set incsearch    " find as you type search
set hlsearch     " highlight search terms
set laststatus=2 " Always show the status line at the bottom of the window
set number       " Line numbers
set lazyredraw   " redraw only when we need to.

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level
set wildmenu            " Enable command line like completion
set wildmode=longest,list

" Spelling options to use underline rather than highlight issue
set spell
highlight clear SpellBad
highlight SpellBad cterm=underline

" Set indentation and tabs -> spaces
set tabstop=3
set shiftwidth=3
set expandtab

nnoremap <CR> :noh<CR><CR>

source $VIMRUNTIME/vimrc_example.vim  " Makes vim remember cursor position if reopen file

" Mouse support
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Removes trailing spaces
function! TrimWhiteSpace()
   if !&binary && &filetype != 'diff'
      %s/\s\+$//e
   endif
endfunction
" Delete trailing whitespace by pressing "\t" when not in edit mode.
nnoremap <silent> <Leader>t :call TrimWhiteSpace()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status Line Handling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
    \ }
    \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Type Handling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " run checks to see what type of file is being edited
" set autoindent smartindent
" filetype on
" filetype plugin on
" filetype indent on
"
" Associate Config.in file with kconfig syntax
au BufRead,BufNewFile *Config*.in* set filetype=kconfig
" Associate defconfig with makefile syntax
au BufRead,BufNewFile *defconfig,*.mk,*merconfig,*frag set filetype=make
" Asciidoc formating
"au BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
set filetype=asciidoc textwidth=80

" File type specific indentation
autocmd Filetype idl setlocal ts=3 sw=3 expandtab
autocmd Filetype c setlocal ts=8 sw=8
autocmd Filetype cpp setlocal ts=3 sw=3 expandtab

" Don't continue comments when pasting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

" Auto-close
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1

let g:syntastic_c_checkpatch_exec = '/accts/blmaier/linux/scripts/checkpatch.pl'
let g:syntastic_c_checkpatch_post_args = "--strict --tree"
autocmd BufEnter */{linux,kernel,linux-kernel,rc-linux-stable*}/*
	\ let b:syntastic_checkers = ["c/checkpatch"]

let g:syntastic_c_gcc_post_args = "-DSYNTASTIC"
let g:syntastic_c_gcc_args = "-DSYNTASTIC"
let g:syntastic_c_compiler_post_args = "-DSYNTASTIC"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/other/fzf
map ; :Files<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
