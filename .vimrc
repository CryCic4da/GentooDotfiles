"-------------------VUNDLE BEGIN------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'archseer/colibri.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mhinz/vim-startify'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'

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
set tabstop=4
set shiftwidth=4
set number
set linebreak
set nobackup
set noswapfile
set visualbell t_vb=
set encoding=UTF-8
set background=dark
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
set termguicolors
colorscheme colibri
"colorscheme cthulhian
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" vim-airline config
"let g:airline_theme = 'dark'
let g:airline_theme = 'kolor'
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1

" NERDTREE-PLUGIN GIT ICONS 
let g:NERDTreeShowGitStatus = 1
let g:NERDTreeUpdateOnWrite = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : "☒ ",
    \ "Unknown"   : "? "
	\ }

"GIT GUTTER CONFIG
let g:gitgutter_highlight_lines = 0
"nmap GitGutterLineHighlightsToggle

"YCM CONFIG
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers = { 
			\	'c': [ 're!\w{2}' ] 
			\} 

syntax on
