call plug#begin('~/.config/nvim/autoload/plugged')

  " https://github.com/VonHeikemen/lsp-zero.nvim
  " LSP Support
  Plug 'neovim/nvim-lspconfig'             " Required
  Plug 'williamboman/mason.nvim',          " Optional
  Plug 'williamboman/mason-lspconfig.nvim' " Optional

  " Autocompletion
  Plug 'hrsh7th/nvim-cmp'     " Required
  Plug 'hrsh7th/cmp-nvim-lsp' " Required
  Plug 'L3MON4D3/LuaSnip'     " Required

  " LSP zero
  Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

  " Add color highlighting
  Plug 'norcalli/nvim-colorizer.lua' 

  " Nerdtree
  Plug 'preservim/nerdtree'
  
  " Auto bracket pairs
  Plug 'jiangmiao/auto-pairs'
   
  " Themes
  Plug 'joshdick/onedark.vim'

  " Guide lines for code
  Plug 'lukas-reineke/indent-blankline.nvim'

  " File explorer
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " Starusline theme
  Plug 'vim-airline/vim-airline'

  " LSP signature helper
  Plug 'ray-x/lsp_signature.nvim'
call plug#end()

colorscheme onedark

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ["exact", "substring", "fuzzy"]
set termguicolors

" https://github.com/VonHeikemen/lsp-zero.nvim
lua <<EOF
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

require "lsp_signature".setup()
EOF
