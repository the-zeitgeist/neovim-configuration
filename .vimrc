set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set updatetime=100

call plug#begin('~/.vim/plugged')

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chun-yang/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mg979/vim-visual-multi'
Plug 'APZelos/blamer.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
Plug 'vim-scripts/loremipsum'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Testing stage
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" Change leader key to space
let mapleader=" "
let NERDTreeQuitOnOpen=1

let g:blamer_enabled = 1
let g:blamer_prefix = ' -> '
let g:blamer_relative_time = 1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:vim_jsx_pretty_colorful_config = 1

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

" Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>

" Navigation
nmap <Leader>k :tabn<CR>
nmap <Leader>j :tabp<CR>
nmap <Leader>l :tabl<CR>
nmap <Leader>h :tabr<CR>

" Better whitespace
nmap <Leader>t :StripWhitespace<CR>

" Conquer of Completition
nmap <Leader>b :CocCommand<CR>
