" by default the leater key is \ 
let mapleader = " "

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set undodir=˜/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
" we can check more options typing :options
set signcolumn

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'

"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'akinsho/flutter-tools.nvim'

"Plug 'junegunn/fzf'

call plug#end()

"this close auto sugestion aftes finish automatically
"autocmd CompleteDone * silent! pclose
"avoid openin sugestion
set completeopt-=preview
let g:lsc_auto_map = {
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'Rename': 'gR',
    \ 'ShowHover': v:true,
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'SignatureHelp': 'gm',
    \ 'Completion': 'completefunc',
    \}

colorscheme gruvbox
highlight Normal guibg=noe

"esc make reference to secuanes nor writed as comman cmd make reference to
"command
nnoremap <leader>pv <esc><C-w>v \| <cmd>:vertical resize 25 \| :Ex  <cr>
"| :Ex | :vertical resize 30<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fs <cmd>Telescope git_status<cr>
nnoremap <leader>fc <cmd>Telescope command_history<cr>

"remaps for lsc
nnoremap <C-]> <cmd> :vertical LSClientGoToDefinitionSplit <cr>
nnoremap <C-W>] <cmd> :LSClientGoToDefinition   <cr>
