set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'msanders/snipmate.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'timcharper/textile.vim'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

"background color
colorscheme desert
"show line counter
set nu!

"hight light
syntax on
filetype plugin on
" 根据文件类型进行缩进
filetype plugin indent on

" 根据结构缩紧
set smartindent
set autoindent

set shiftwidth=4
" every tab switch to 4 space
set softtabstop=4
" change tab to space
set expandtab
" vi-nocomplaible
set nocompatible
" set gui font
set guifont=Monaco\ 10
" 高亮搜索
set hlsearch
" 自动切换当前目录为当前文件所在的目录
set autochdir
" 不重新搜索
set nowrapscan
" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase

" 当文件在外部被修改时，自动重新读取
set autoread

" 狀態欄
set laststatus=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue


""""""""""""""""""""""""""""""
" NERDTree插件的快捷键
""""""""""""""""""""""""""""""
nmap <silent> <leader>nt :NERDTree<cr>
nmap <silent> <leader>nc :NERDTreeClose<cr>
let NERDTreeIgnore = ['\.pyc$']

" 在输入命令时列出匹配项
set wildmenu

" 分割窗口时保持等宽高
set equalalways

" 取消自动备份
set nobackup
" 保存关闭文件之前保留一个备份
set writebackup

" 察看其它编码格式的文件或者解决乱码问题
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936let 
