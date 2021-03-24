set nocompatible    "be iMproved, requred
filetype off        "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/.vim/plugins')
"
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-utils/vim-man'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'mbbill/undotree'

call vundle#end()
filetype plugin indent on

colorscheme gruvbox
set background=dark

if executable('rg')
        let g:rg_derive_root='true'
endif

let g:netrw_winsize = 25

" Experimental - Keybindings
"let mapleader = " "
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
