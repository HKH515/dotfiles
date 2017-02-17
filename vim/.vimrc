set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' " Package manager
Plugin 'vim-scripts/wombat256.vim' " Colorscheme
Plugin 'vim-airline/vim-airline' " Statusbar
Plugin 'tpope/vim-fugitive' " Git support
Plugin 'vim-airline/vim-airline-themes' " Airline themes
Plugin 'scrooloose/nerdtree' " Fuzzy file finder
Plugin 'majutsushi/tagbar' " Class outliner
Plugin 'airblade/vim-gitgutter' " Git gutter
" Plugin 'wakatime/vim-wakatime' " Time tracking platform
" Plugin 'scrooloose/syntastic' " Linter
Plugin 'whatyouhide/vim-gotham' " Colorscheme
call vundle#end()            " required
filetype plugin indent on    " required
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
"set expandtab
set laststatus=2
set t_Co=256
set noshowmode
set ruler
set number
let g:airline_powerline_fonts = 1
" colorscheme wombat256mod

" buffers
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
nmap <F3> :bnext<CR>
nmap <F2> :bprevious<CR>
nmap <C-w> :bw<CR>
nmap t :enew<cr>

" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme='bubblegum'

" nerdtree
map <C-n> :NERDTreeToggle<CR>
" tab mapped to esc
" nnoremap <Tab> <Esc>
" vnoremap <Tab> <Esc>gV
" onoremap <Tab> <Esc>
" inoremap <Tab> <Esc>`^
" inoremap <Leader><Tab> <Tab>

" copy to system clipboard
set clipboard=unnamedplus

" esc to jj
inoremap jj <ESC>

" tagbar
nnoremap <F8> :TagbarOpen fj<CR>
"
" auto-indent file
map <F7> gg=G
