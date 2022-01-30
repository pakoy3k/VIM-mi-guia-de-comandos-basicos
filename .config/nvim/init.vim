set path+=**
set number
set autoindent
" Nice menu when typing `:find *.py` "
set wildmode=longest,list,full
set wildmenu
" Ignore files "
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/venv/*
set wildignore+=**/borrame/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set mouse=v "Enable mouse click for nvim "
"Fix cursor replacement after closing nvim"
set guicursor=
"Shift + Tab does inverse tab"
inoremap <S-Tab> <C-d>

"See invisible characters, optional"
"set list listchars=tab:>\ ,trail:+,eol:$"

"wrap to next line when end of line is reached "
set whichwrap+=<,>,[,]

call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'ambv/black' "Python formatting plugin"
" Neovim Tree shitter "
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" Debugger Plugins "
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'
" Snippets,auto create documentation blocks for functions "
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
"This plugin adds Go language support for Vim, with the following main features:"
Plug 'darrikonn/vim-gofmt'
Plug 'ThePrimeagen/git-worktree.nvim'
"<git>"
"Fugitive is the premier Vim plugin for Git."
Plug 'tpope/vim-fugitive'
"Git extension for fugitive.vim. , Requires fugitive #git"
Plug 'tpope/vim-rhubarb'
"A git commit browser. , Requires fugitive #git"
Plug 'junegunn/gv.vim'
"Easy way to navigate undo branches #git"
Plug 'mbbill/undotree'
"</git>"

"View man pages in vim. Grep for the man pages."
Plug 'vim-utils/vim-man' "#Rev"
"Theme Colors"
Plug 'gruvbox-community/gruvbox'
" telescope requirements... "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" HARPOON!! "
Plug 'mhinz/vim-rfc'
Plug 'ThePrimeagen/harpoon'
" prettier"
Plug 'sbdchd/neoformat'
" bottom status bar "
Plug 'hoob3rt/lualine.nvim'
""""" new for python dev
""code autocompletion engine https://www.dazhuanlan.com/zheng5175/topics/1768707 "
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'

Plug 'vim-syntastic/syntastic'
"for use , press F7
Plug 'nvie/vim-flake8'

"<Disable_meanwhile>"
"Plug 'rust-lang/rust.vim' "
"Plug 'tpope/vim-projectionist'"
"Plug 'tpope/vim-dispatch'
"Syntax files for Solidity, the contract-oriented programming language for Ethereum."
"Plug 'tomlion/vim-solidity'
"Plug 'simrat39/symbols-outline.nvim'
"Plug 'nvim-lua/completion-nvim'
"Plug 'glepnir/lspsaga.nvim'
"Plug 'tjdevries/nlua.nvim'
"Plug 'tjdevries/lsp_extensions.nvim'
"Plug 'vim-conf-live/vimconflive2021-colorscheme'
"Plug 'flazz/vim-colorschemes'
"Plug 'chriskempson/base16-vim'

"</Disable_meanwhile>"
"https://github.com/chubin/cheat.sh#vim"
Plug 'gmarik/vundle'
Plug 'scrooloose/syntastic'
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()
"check cheat sheet for python, more -> https://github.com/vim-syntastic/syntastic"
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_shell_checkers = ['shellcheck']
let g:syntastic_javascript_checkers = [ 'jshint' ]
let g:syntastic_go_checkers = ['go']

"let python_highlight_all=1
syntax on
"Word under cursor will be searched if no argument is passed to Rg"
if executable('rg')
    let g:rg_derive_root='true'
endif

"let loaded_matchparen = 1 "match parentesis parens()"
let mapleader = " " 
""#pk
let g:deoplete#enable_at_startup = 1
"let g:airline_theme='owo'


colorscheme gruvbox
