set title
set mouse=a
set nowrap
set nocompatible
set encoding=UTF-8
set relativenumber

"identation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

"correct words
set spelllang=en,es


"vim-plug
call plug#begin('~/.config/nvim/plugged')
"theme dracula
Plug 'dracula/vim', { 'as': 'dracula' }
"auto pairs
Plug 'jiangmiao/auto-pairs'
"Syntax support
Plug 'sheerun/vim-polyglot'
"File explorer
Plug 'scrooloose/NERDTree'    
"Icons
Plug 'ryanoasis/vim-devicons'
"autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"theme config
syntax enable
colorscheme dracula

"NerdTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
