set number
set mouse=a
set numberwidth=1
" set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set laststatus=2
set noshowmode
set updatetime=100
set tabstop=4
set shiftwidth=2
" set tabstop=8
" set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

call plug#begin('~/.vim/plugged')

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'mg979/vim-visual-multi'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/loremipsum'
Plug 'APZelos/blamer.nvim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'markdown', 'yaml', 'html'] }


call plug#end()

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
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:vim_jsx_pretty_colorful_config = 1 "
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'js']
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


let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>fq :q!<CR>
nmap <Leader>t :StripWhitespace<CR>
nmap <Leader>b :CocCommand<CR>
nmap <Leader>k :tabn<CR>
nmap <Leader>j :tabp<CR>
nmap <Leader>l :tabl<CR>
nmap <Leader>h :tabr<CR>
" split screen navigation short cut
nmap <Leader>m <C-w>
" Keybind for pairs with content
nmap <Leader>, <M-e>
