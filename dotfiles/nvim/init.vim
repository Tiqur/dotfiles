source $HOME/.config/nvim/vim-plug/plugins.vim

" Fix https://github.com/neovim/neovim/issues/11330
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" Allow nvim to copy to main buffer
set clipboard+=unnamedplus

" Set numbers on left side
set relativenumber
set number
set nohlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2	
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

" Enable mouse ( for stuff like resizing windows )
set mouse=a
set noshowmode
set updatetime=20
set shortmess+=c
set t_Co=256
set clipboard+=unnamedplus "Set visual mode highlight color
hi Visual guifg=White guibg=LightBlue gui=none

" Use space as leader
let mapleader = "\<Space>"
map <leader>f :FZF<CR>
map <leader>r :Rg<CR>

" Navigate split terminals
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Auto enter vim hard mode
" let g:hardtime_default_on = 1

