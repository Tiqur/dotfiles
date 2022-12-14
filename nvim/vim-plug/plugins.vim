call plug#begin('~/.config/nvim/autoload/plugged')
 
  " Auto bracket pairs
  Plug 'jiangmiao/auto-pairs'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'

  " Autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Autocomplete
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'hrsh7th/cmp-nvim-lsp'
  " Plug 'hrsh7th/cmp-buffer'
  " Plug 'hrsh7th/cmp-path'
  " Plug 'hrsh7th/cmp-cmdline'
  " Plug 'hrsh7th/nvim-cmp'

  " Themes
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'arcticicestudio/nord-vim'
  Plug 'rakr/vim-one'
  Plug 'dracula/vim', { 'name': 'dracula' }
  Plug 'saltdotac/citylights.vim'
  Plug 'joshdick/onedark.vim'



  " A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.
  "Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'folke/trouble.nvim'

  " File explorer
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

  " Ripgrep
  Plug 'duane9/nvim-rg'

  " Starusline theme
  Plug 'vim-airline/vim-airline'

  " Vim hard-mode ( removes h,j,k,l )
  " Plug 'takac/vim-hardtime'
call plug#end()

colorscheme onedark

" Tab completion
noremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
noremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"
