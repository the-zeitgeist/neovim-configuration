set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set updatetime=100
" set guifont=Fira\ Code\ 11

call plug#begin('~/.vim/plugged')

" IDE
Plug 'APZelos/blamer.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'chun-yang/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mg979/vim-visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'master'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'rbong/vim-flog'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Testing stage
Plug 'tpope/vim-surround'

call plug#end()

" Change leader key to space
let mapleader=" "
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40

let g:blamer_enabled = 1
let g:blamer_prefix = ' -> '
let g:blamer_relative_time = 1
let g:airline_powerline_fonts = 1

let g:typescript_conceal_function             = "ƒ"
let g:typescript_conceal_null                 = "ø"
let g:typescript_conceal_undefined            = "¿"
let g:typescript_conceal_this                 = "@"
let g:typescript_conceal_return               = "⇚"
let g:typescript_conceal_prototype            = "¶"
let g:typescript_conceal_super                = "Ω"

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:rainbow_active = 1

let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" MAPS
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>fq :q!<CR>
nnoremap ,<space> :nohlsearch<CR>

" Easy motion
nmap <Leader>s <Plug>(easymotion-s2)
nmap <leader>f :FZF --reverse<CR>
nmap <leader>ff :Rg<CR>

" Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>

" Navigation
nmap <Leader>k :tabn<CR>
nmap <Leader>j :tabp<CR>
nmap <Leader>l :tabl<CR>
nmap <Leader>h :tabr<CR>
nmap <Leader>m <C-w>

" Better whitespace
nmap <Leader>t :StripWhitespace<CR>

" Conquer of Completition
nmap <Leader>b :CocCommand<CR>
nmap <Leader>a :CocAction<CR>
