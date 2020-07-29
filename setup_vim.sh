# Set up pathogen - https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Set up NERDtree, a file explorer - https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Set up better vim diff - https://github.com/chrisbra/vim-diff-enhanced
git clone https://github.com/chrisbra/vim-diff-enhanced.git ~/.vim/bundle/vim-enhanced-diff

# Set up lightline, better status bar - https://github.com/itchyny/lightline.vim
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim

# Set up git gutter - https://github.com/airblade/vim-gitgutter
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# Set up syntastic, a syntax checker - https://github.com/vim-syntastic/syntastic
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Set up tagbar, a visual file structure plugin
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar

# Download dracula color scheme - https://github.com/dracula/vim
git clone https://github.com/dracula/vim ~/.vim/bundle/dracula

# Set up vim autotag, a CTAG generator - https://github.com/craigemery/vim-autotag
git clone https://github.com/craigemery/vim-autotag ~/.vim/bundle/vim-autotag

# Set up fzf, a fuzzy search file finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
git clone https://github.com/junegunn/fzf.vim ~/.vim/bundle/fzf

# Set up git fugitive, a vim git wrapper - https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

# Set up commentary, a line commenter - https://tpope.io/vim/commentary.git
git clone https://tpope.io/vim/commentary.git ~/.vim/bundle/commentary

# Setup indexed search, shows number of matches found - https://github.com/henrik/vim-indexed-search
git clone https://github.com/henrik/vim-indexed-search.git ~/.vim/bundle/indexed-search

~/.fzf/install
