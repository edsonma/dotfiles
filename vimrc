set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin vim-fugitive
Plugin 'tpope/vim-fugitive'

" plugin nerdtree
Plugin 'scrooloose/nerdtree'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" Easy Motion
Plugin 'easymotion/vim-easymotion'

" Bad Wolf
Plugin 'sjl/badwolf'

" lightline.vim
Plugin 'itchyny/lightline.vim'

" tcomment
Plugin 'tomtom/tcomment_vim'

" vim-colors-pencil
Plugin 'reedes/vim-colors-pencil'

" vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" vim-table-mode
Plugin 'dhruvasagar/vim-table-mode'

" l9
Plugin 'L9'

" vim-endwise
Plugin 'tpope/vim-endwise'

" vim-ruby-runner
Plugin 'henrik/vim-ruby-runner'

" tabular
Plugin 'godlygeek/tabular'

" identline
Plugin 'yggdroot/indentline'

" surround.vim
Plugin 'tpope/vim-surround'

" vim-airline
Plugin 'bling/vim-airline'

" vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

" tagbar
Plugin 'majutsushi/tagbar'

" vim-javascript
Plugin 'pangloss/vim-javascript'

" vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" vim-markdown
Plugin 'plasticboy/vim-markdown'

" vim-tmux-navigator
Plugin 'christoomey/vim-tmux-navigator'

" vim-json
Plugin 'elzr/vim-json'

" javascript-libraries-syntax.vim
Plugin 'othree/javascript-libraries-syntax.vim'

" docker-file vm
Plugin 'ekalinin/dockerfile.vim'

" Drawit!
Plugin 'DrawIt'

" vim-bundler
Plugin 'tpope/vim-bundler' 

" speed-dating
Plugin 'tpope/vim-speeddating'

" better-whitespace
Plugin 'ntpeters/vim-better-whitespace'

" autoclose
Plugin 'townk/vim-autoclose'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme inkpot

nmap <leader>n :NERDTreeToggle<cr>

set nu
set relativenumber

set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch
set ic

let NERDTreeIgnore = ['node_modules']

set backupdir=~/.vim/backup//
set directory=~/.vim/swp//