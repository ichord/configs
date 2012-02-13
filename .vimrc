"background color
:colorscheme desert
"show line counter
:set nu!
"hight light
syntax on
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

""""""""""""""""""""""""""""""
" NERDTree插件的快捷键
""""""""""""""""""""""""""""""
nmap <silent> <leader>nt :NERDTree<cr>
nmap <silent> <leader>nc :NERDTreeClose<cr>

" 在输入命令时列出匹配项
set wildmenu

" 分割窗口时保持等宽高
set equalalways

" 取消自动备份
set nobackup
" 保存关闭文件之前保留一个备份
set writebackup

" 察看其它编码格式的文件或者解决乱码问题
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

""""""""""""""""""""""""""""""
" bufExplorer插件的设置
""""""""""""""""""""""""""""""
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize=20 
let g:bufExplorerUseCurrentWindow=1 
autocmd BufWinEnter \[Buf\ List\] setl nonumber

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
      
" pathogen hack.
call pathogen#infect()
