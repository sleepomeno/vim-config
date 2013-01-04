" This is standard pathogen and vim setup
set nocompatible
call pathogen#infect() 
syntax on
filetype plugin indent on
set number
set hlsearch
set wmh=0
set tabstop=2
set shiftwidth=2
set wildignore+=*/classes/**
set wildignore+=*/lib/**
set wildignore+=*/war/**
set wildignore+=*/target/**


color asmanian2

let maplocalleader=","
let mapleader = ","

" Easymotion
let g:EasyMotion_leader_key = ',,' 
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Commen

noremap <F2> :NERDTreeToggle<CR>
noremap <leader>o :CommandT<CR>
noremap <leader>O :CommandTFlush<CR>
noremap <leader>m :CommandTBuffer<CR>

" Paredit 
" Kill backward
nmap  <leader>H d[(,S
" Kill forward
nmap  <leader>L d])%,S 
" Move left <
" Move right >
" Split O
" Join J
" Wrap W
" Splice S
" Raise I
" go to first char of next line
imap ä <ESC>j^i


"Fenster tauschen mit Strg+x
"map <C-x> <C-w>x
""Maps zum ändern von Splitscreens
map <C-k> <C-w>+
map <C-j> <C-w>-
map <C-l> <C-w><
map <C-h> <C-w>>

"Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap td  :tabclose<CR>

""Fenster wechseln
noremap ö <C-w>w

""Avoid ESC
:imap jj <Esc>


" Here's the vimclojure stuff. You'll need to adjust the NailgunClient
" setting if you're on windows or have other problems.
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"
let vimclojure#SplitPos = "bottom"
let vimclojure#SplitSize = 10

" Paredit
let g:paredit_mode = 1

" CommandT
let g:CommandTMaxHeight = 15
