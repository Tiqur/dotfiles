call plug#begin('~/.config/nvim/autoload/plugged')
 
  " Telescope
  "Plug 'nvim-lua/popup.nvim'
  "Plug 'nvim-lua/plenary.nvim'
  "Plug 'nvim-telescope/telescope.nvim'

  " Syntax files for solidity
  Plug 'tomlion/vim-solidity'

  " LSP for autocomplete
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Nerdtree
  Plug 'preservim/nerdtree'
  "
  " Auto bracket pairs
  Plug 'jiangmiao/auto-pairs'
   
  " Themes
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'arcticicestudio/nord-vim'
  Plug 'rakr/vim-one'
  Plug 'dracula/vim', { 'name': 'dracula' }
  Plug 'saltdotac/citylights.vim'
  Plug 'joshdick/onedark.vim'

  " Parses AST and makes themes pretty 
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " FZF, ( SPACE F file explorer )
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " File explorer
  Plug 'junegunn/fzf.vim'

  " Wakatime
  Plug 'wakatime/vim-wakatime'

  " Starusline theme
  Plug 'vim-airline/vim-airline'

  " Vim hard-mode ( removes h,j,k,l )
  " Plug 'takac/vim-hardtime'
call plug#end()

colorscheme onedark

" Tab completion
noremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
noremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ["exact", "substring", "fuzzy"]

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }

" Enable 
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

