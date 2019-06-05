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

# Download badwolf color scheme - https://github.com/sjl/badwolf
wget https://bitbucket.org/sjl/badwolf/raw/tip/colors/badwolf.vim
mkdir --parents ~/.vim/colors
mv badwolf.vim ~/.vim/colors/
