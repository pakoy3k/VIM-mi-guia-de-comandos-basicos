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
set mouse=a "Enable mouse click for nvim "
"Fix cursor replacement after closing nvim"
set guicursor=
"Shift + Tab does inverse tab"
inoremap <S-Tab> <C-d>

"See invisible characters, optional"
"set list listchars=tab:>\ ,trail:+,eol:$"


set whichwrap+=<,>,[,]"wrap to next line when end of line is reached "


call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'ambv/black' "Python formatting plugin"

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'" 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'mattn/emmet-vim'

Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
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
Plug 'vim-utils/vim-man'

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

Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'hoob3rt/lualine.nvim'

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

call plug#end()

"Word under cursor will be searched if no argument is passed to Rg"
if executable('rg')
    let g:rg_derive_root='true'
endif

"let loaded_matchparen = 1 "match parentesis parens()"
let mapleader = " " 

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

nnoremap <silent> Q <nop>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
" Probably rename this, because its straight silly to be a worktree.
nnoremap <leader>; :lua require("theprimeagen.git-worktree").execute(vim.loop.cwd(), "just-build")<CR>

nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
nnoremap <Leader>cpu a%" PRIu64 "<esc>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>gt <Plug>PlenaryTestFile
nnoremap <leader>gll :let g:_search_term = expand("%")<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>
nnoremap <leader>gln :cnext<CR>:call search(_search_term)<CR>
nnoremap <leader>glp :cprev<CR>:call search(_search_term)<CR>

nnoremap <leader>x :silent !chmod +x %<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d



colorscheme gruvbox
