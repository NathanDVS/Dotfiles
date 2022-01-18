syntax on
set number
set mouse=a
set smarttab
set tabstop=4
set autoindent
set noshowmode
set shiftwidth=4
set termguicolors
set softtabstop=4
set encoding=UTF-8

call plug#begin()
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'nvim-lua/popup.nvim'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()

colorscheme onedark
set completeopt=menu,menuone,noselect

let g:onedark_config = { 'style': 'dark' }
let g:lightline = { 'colorscheme' : 'one' }

nnoremap <C-s> :w!<CR>
nnoremap <C-u> :undo<CR>
nnoremap <C-r> :redo<CR>
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-t> :ToggleTerm direction=float<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>

lua require('lspcmp-config')
lua require('nvimtree-config')
lua require('telescope-config')
lua require('treesitter-config')
lua require("bufferline-config")