syntax on

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/joshdick/onedark.vim.git'

Plug 'sts10/vim-pink-moon'

" Make sure you use single quotes
"
" Unmanaged plugin (manually installed and updated)
Plug 'sheerun/vim-polyglot'

Plug 'https://github.com/Glench/Vim-Jinja2-Syntax.git'

Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

colorscheme onedark

" autocmd vimenter * NERDTree

let NERDTreeShowHidden=1
