" ~/.config/nvim/init.vim

" Deshabilitar la compatibilidad con Vi para tener todas las características de Vim
set nocompatible

" Habilitar la sintaxis y el resaltado de colores
syntax on
filetype plugin indent on

" Números de línea relativos y absolutos
set number
set relativenumber

" Habilitar el uso del mouse en todos los modos
set mouse=a

" Configuración de indentación
set tabstop=4       " Número de espacios que un tab representa
set shiftwidth=4    " Número de espacios para indentación automática
set expandtab       " Convierte tabs en espacios
set autoindent      " Indentación automática
set smartindent     " Indentación inteligente

" Búsqueda sensible a mayúsculas y minúsculas
set ignorecase
set smartcase

" Resaltar resultados de búsqueda
set hlsearch

" Mostrar coincidencias mientras se escribe la búsqueda
set incsearch

" Deshabilitar el respaldo y el intercambio de archivos
set nobackup
set nowritebackup
set noswapfile

" Habilitar el portapapeles del sistema
set clipboard+=unnamedplus

" Configuración de la línea de estado
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [LEN=%L]

" Mapeos personalizados
let mapleader = "," " Cambiar el líder a una coma

" Guardar y salir rápidamente
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Navegación entre ventanas
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Desplazamiento suave
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Plugins (requiere un gestor de plugins como vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Temas de colores
Plug 'morhetz/gruvbox'

" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Navegación de archivos
Plug 'preservim/nerdtree'

" Icons
Plug 'ryanoasis/vim-devicons'

" Barra de estado mejorada
Plug 'vim-airline/vim-airline'

" Búsqueda de archivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Git integration
Plug 'mhinz/vim-signify'
call plug#end()

" Configuración del tema de colores
colorscheme gruvbox
set background=dark

" Configuración de NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Configuración de CoC (Conquer of Completion)
" Usar tab para autocompletado
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Configuración de FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

" Configuración de Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Configuración de CoC para lenguajes específicos
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'pyproject.toml']

" Finalizar la configuración de plugins
call plug#end()
