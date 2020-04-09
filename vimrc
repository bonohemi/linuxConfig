if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'matze/vim-move'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'

"colorscheme
Plug 'w0ng/vim-hybrid'
Plug 'nanotech/jellybeans.vim'
Plug 'dracula/vim'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'

call plug#end()

filetype indent on
syntax on

let g:python_recommended_style = 0
filetype plugin indent on
autocmd FileType py setlocal ts=4 sw=4 sts=4 smartindent noexpandtab
autocmd BufEnter *.\(py\) setlocal noexpandtab



"=============================================================================================================================
" 플러그인 설정
"=============================================================================================================================
" vim-move plugin 키를 콘트롤 키가 할 수 있도록 설정
let g:move_key_modifier = 'C'

let g:lightline = {
	\ 'active': {
	\ 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ]
	\ }
	\ }

"=============================================================================================================================
" 키맵핑
"=============================================================================================================================
"let g:mapleader = "," "set leader key to comma

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
inoremap <Leader>q :FufBuffer<CR>

" NERDTreeToggle
nnoremap <F5> :NERDTreeToggle<CR>
inoremap <F5> :NERDTreeToggle<CR>

"nnoremap <C-F> :NERDTreeFind<CR>

"map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set noexpandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
"map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set noexpandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>

" color 설정
nnoremap <Leader>c1 :colorscheme monochrome<CR>
nnoremap <Leader>c2 :colorscheme PlasticCodeWrap<CR>
nnoremap <Leader>c3 :colorscheme greenvision<CR>
"nnoremap <Leader>c3 :colorscheme vim-colors-solarized<CR>
nnoremap <Leader>c4 :colorscheme dracula<CR>
nnoremap <Leader>c5 :colorscheme jellybeans<CR>
nnoremap <Leader>c6 :colorscheme hybrid<CR>
nnoremap <Leader>c7 :colorscheme tabula<CR>
nnoremap <Leader>c8 :colorscheme seoul256<CR>

" nohls
nnoremap <Leader>, :nohls<CR>

"=============================================================================================================================
" 기본설정
"=============================================================================================================================
set laststatus=2
set t_Co=256
set cursorline
colorscheme jellybeans

set number

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
