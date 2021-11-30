set nocompatible

" --- Vundle setup ---
" To install Vundle run `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
" To install the plugins run `Vim +PluginInstall`
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" --- Make Vim look good ---
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'sjl/badwolf'
" colorscheme badwolf

" --- Make Vim work more like an IDE ---
"  File browser
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"  Syntax error checking
Plugin 'vim-syntastic/syntastic'
" Sublime like file search
Plugin 'ctrlpvim/ctrlp.vim'
" Git support
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" Auto delimit
Plugin 'Raimondi/delimitMate'
" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Align CSV files at commas, align Markdown tables, and more
Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'
" SCSS syntax hightlighting
Plugin 'cakebaker/scss-syntax.vim'
" Easy uncommenting
Plugin 'scrooloose/nerdcommenter'
" Support editorconfig
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start " Delete everything
set ruler          " Show cursor position
set number         " Show numbers
set showcmd
set incsearch      " Show partial matches for a search phrase
set hlsearch       " Enable highlight search
set mouse=a        " Enable mouse control
set tabstop=4      " Tab size
set shiftwidth=4   " Indentation size
set expandtab      " Turn tabs to spaces
set showmatch      " Show matching brackets
"set termguicolors  " Enable true colors
set autoread       " Reload file on external change
set clipboard=unnamed " Text is yanked into clipboard

" Allow capital version of wq
command! Q q
command! W w
command! Wq wq
command! WQ wq

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

" set background=dark
set laststatus=2
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" ---- Nerdtree settings ----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ---- scrooloose/nerdcommenter settings ----
nmap \/ <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" ---- ctrlpvim/ctrlp ----
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

syntax on

