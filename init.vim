let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
"curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'matze/vim-move'
Plug 'kien/rainbow_parentheses.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'

"colorscheme
Plug 'w0ng/vim-hybrid'
Plug 'nanotech/jellybeans.vim'
Plug 'dracula/vim'
Plug 'kiddos/malokai.vim'
Plug 'vim-scripts/greenvision'
"Plug 'altercation/vim-colors-solarized'
Plug 'fxn/vim-monochrome'

call plug#end()

"----------------------------------------------------------------------------------------
" 플러그인 설정
"----------------------------------------------------------------------------------------
"map ; :Files<CR>

" vim-move plug in 키를 콘트롤 키가 할 수 있도록 설정
let g:move_key_modifier = 'C'

let g:lightline = {
	\ 'active': {
	\ 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ]
	\ }
	\ }

"let g:indentLine_enabled = 1
"let g:indentLine_setColors = 0
"let g:indentLine_color_term = 239
"let g:indentLine_concealcursor = 0
"let g:indentLine_char = '|' "where 'c' can be any ASCII character. You can also use one of ¦, ┆, │, ⎸, or ▏ to display more beautiful lines. However, these characters will only work with files whose encoding is UTF-8.
"let g:indentLine_faster = 1
"let g:indentLine_color_gui = '#385900'

let g:indentLine_color_term = 100
let g:indentLine_char = '¦'
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['help', 'nerdtree']
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
let g:indentLine_maxLines = 3000
nnoremap \il :IndentLinesToggle<CR>

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces

"===========================================================================================================================bb
"General Config
"=============================================================================================================================
set nocompatible
filetype plugin indent on
syntax enable

"let g:mapleader = "," "set leader key to comma

set number "line numbers
set hlsearch "highlight searching result
set ignorecase "ignore Case sensitive when searching
"set smartcase
set showmatch "highlight matched bracket ()
set mouse=c "Enable mouse in help mode "'a' to all mode, n, v, i, c to Normal, Visual, Insert, Command mode

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
"set bomb
"set binary

"" Fix backspace indent
set backspace=indent,eol,start

"----------------------------------------------------------------------------------------
" 탭관련설정
"----------------------------------------------------------------------------------------
"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
"set expandtab
set noexpandtab " 탭을 스페이스로 바꾸지 않도록 한다,
set nowrap		" 자동 줄바꿈 하지 않음

autocmd FileType py setlocal ts=4 sw=4 sts=4 smartindent noexpandtab

"set listchars=tab:>·
"set listchars+=trail:·
"set listchars+=extends:»
"set listchars+=precedes:«
"set listchars+=nbsp:·
"set listchars+=space:·
"set fillchars+=vert:\│ "Make vertical split separator full line
"set listchars=tab:\|\ 
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"=============================================================================================================================
""디렉토리(폴더) 관련 설정
"=============================================================================================================================
""현재 버퍼에 열려진 파일의 디렉토리로 변경한다.
"set autochdir
"set undodir=$VIM\undo\
"set backupdir=$VIM\backup\
"set directory=$VIM\swap\
set nobackup
set noswapfile

set fileformats=unix,dos,mac

"=============================================================================================================================
" Visual Settings
"=============================================================================================================================
syntax on
colorscheme jellybeans
set ruler
set cursorline

set number
set numberwidth=4
"set formatoptions+=o

set t_Co=256
"set termguicolors
"set guicursor=


"=============================================================================================================================
" Autocmd Rules
"=============================================================================================================================



"=============================================================================================================================
" Mappings
"=============================================================================================================================
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

nmap <leader>l <Esc>:set list!<CR>

" Quickly edit/reload this configuration file
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>sv :so $MYVIMRC<CR>:echo "Reloaded"<CR>

" 붙여넣기시 들여쓰기 토글
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" 라인번호 토글
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

"FuzzyFinder Buffer
nnoremap <Leader>q :FufBuffer<CR>

" NERDTreeToggle
nnoremap <F5> :NERDTreeToggle<CR>
inoremap <F5> :NERDTreeToggle<CR>

"nnoremap <C-F> :NERDTreeFind<CR>

map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set noexpandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set noexpandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>

" color 설정
nnoremap <Leader>c1 :colorscheme monochrome<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c2 :colorscheme PlasticCodeWrap<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c3 :colorscheme greenvision<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c4 :colorscheme dracula<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c5 :colorscheme jellybeans<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c6 :colorscheme hybrid<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c7 :colorscheme tabula<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c8 :colorscheme malokai<CR>:redraw<CR>:colorscheme<CR>
nnoremap <Leader>c9 :colorscheme solarized<CR>:colorscheme<CR>

" nohls
nnoremap <Leader>, :nohls<CR>


" neovim 마지막 라인이 중복 출력되는 이슈
" BCE (background color erase)
"highlight Normal ctermbg=NONE

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent
