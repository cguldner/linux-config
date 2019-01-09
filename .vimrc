source $VIMRUNTIME/vimrc_example.vim  " Makes vim remember cursor position if reopen file
colorscheme badwolf

set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level
