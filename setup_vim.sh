# Set up pathogen - https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Set up NERDtree - https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Download badwolf color scheme - https://github.com/sjl/badwolf
wget https://bitbucket.org/sjl/badwolf/raw/tip/colors/badwolf.vim
mkdir --parents ~/.vim/colors
mv badwolf.vim ~/.vim/colors/
