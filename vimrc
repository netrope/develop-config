set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 

" 在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim
" vundle初始化 
call vundle#begin()
" 或者传递一个 Vundle 安装插件的路径
"call vundle#begin('~/some/path/here')

" 让 Vundle 管理 Vundle, 必须
Plugin 'VundleVim/Vundle.vim'

" 下面是不同支持幅度的例子
" 保持 Plugin 命令 在 vundle#begin 和 end 之间
" plugin 在 GitHub 仓库
Plugin 'tpope/vim-fugitive'
" 来自http://vim-scripts.org/vim/scripts.html的插件 
" Plugin 'L9'
" 未托管在GitHub上的Git插件 
" Plugin 'git://git.wincent.com/command-t.git'
" 本地机器上的git软件库（即编写自己的插件时） 
" Plugin 'file:///home/gmarik/path/to/plugin'
" sparkup vim脚本在名为vim的该软件库子目录下。 
" 传递路径，合理设置运行时路径。 
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装 L9 并避免名称冲突 
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
" Plugin 'majutsushi/tagbar'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
"每个插件都应该在这一行之前  
call vundle#end()            " 这是必需的 
filetype plugin indent on    " 这是必需的 
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to  auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NERDTree Config
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

" tagbar Config
nmap <silent> <F4> :TagbarToggle<CR>  
let g:tagbar_ctags_bin = 'ctags'  
let g:tagbar_width = 30 

" ctrlp Config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" powerline Config
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2 
set guifont=Source\ Code\ Pro\ for\ Powerline:h12 
set noshowmode


"===================== Custom Editor Config =============================
set mouse=a "启用鼠标

set hlsearch "高亮度反白 
set backspace=2 "可随时用倒退键删除 
set autoindent "自动缩排 
set ruler "可显示最后一行的状态 
set showmode "左下角那一行的状态 
set nu "可以在每一行的最前面显示行号 
"set bg=dark "显示不同的底色色调 
syntax on "进行语法检验，颜色显示 
set wrap "自动折行 
set shiftwidth=4 
set tabstop=4 
set softtabstop=4 
set expandtab "将tab替换为相应数量空格 
set smartindent


"键盘映射模式
"map : 正常模式，可视化模式和运算符模式可用
"nmap ：正常模式可用
"vmap ：可视化模式可用
"omap ：运算符模式可用
"map! ：插入模式和命令行模式可用
"imap ：插入模式可用
"cmap ：命令行模式可用
map ss :source ~/.vimrc <cr>
map ee :e ~/.vimrc <cr>
