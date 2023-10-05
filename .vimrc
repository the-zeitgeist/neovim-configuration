set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
syntax on
set showcmd
set foldmethod=indent
set nofoldenable
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set updatetime=100
set splitbelow
set splitright
" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Medium/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete.ttf
set guifont=FiraCode\ Nerd\ Font\ 11

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
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mg979/vim-visual-multi'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'rbong/vim-flog'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'phindle/error-lens'
" Plug 'the-zeitgeist/static-headers.nvim'

" Testing stage
Plug 'tpope/vim-surround'

call plug#end()

" Change leader key to space
let mapleader = " "
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 40
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:blamer_enabled = 1
let g:blamer_prefix = ' -> '
let g:blamer_relative_time = 1
let g:airline_powerline_fonts = 1

let g:coc_disable_startup_warning = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:EasyMotion_smartcase = 1
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:rainbow#blacklist = [16, 232, 233, 234, 235, 236]

let g:highlightedyank_highlight_duration = 500

let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'❭',
                \ 'Staged'    :'⟫',
                \ 'Untracked' :'➜',
                \ 'Renamed'   :'⟆',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let NERDTreeShowHidden = 1

au VimEnter * RainbowParentheses

" MAPS
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>fq :q!<CR>
nnoremap ,<space> :nohlsearch<CR>

" Easy motion
nmap <Leader>m <Plug>(easymotion-s2)

" Search
nmap <leader>f :FZF --reverse<CR>
nmap <leader>ff :Rg<CR>

" Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>

" Navigation
nmap <Leader>k :tabn<CR>
nmap <Leader>j :tabp<CR>
nmap <Leader>l :tabl<CR>
nmap <Leader>h :tabr<CR>

nmap <Leader>e <C-w>

" Resize
nmap <Leader>< 10<C-w><<CR>
nmap <Leader>> 10<C-w>><CR>
nmap <Leader>+ 10<C-w>+<CR>
nmap <Leader>- 10<C-w>-<CR>

" Better whitespace
nmap <Leader>t :StripWhitespace<CR>

" Conquer of Completition
nmap <Leader>b :CocCommand<CR>

" Tabs
nmap <C-t> :tabnew<CR>

" CoC
" Use <tab> and <S-tab> to navigate completion list:

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion: >

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <CR> to confirm completion, use:
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
