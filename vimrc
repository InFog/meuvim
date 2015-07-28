" vimrc
"
" Created by InFog - Evaldo Junior <evaldojuniorbento@gmail.com>
" Inspired by a lot of other vimrc files out there
"
" https://github.com/InFog/meuvim
"
" http://evaldojunior.com

set nocompatible
filetype off
set modelines=0

let mapleader=","

" Bundle is the bundle manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" And now, some bundles
"
" Options to delete, select, copy, etc inside tags and other block symbols
Bundle 'tpope/vim-surround'

" The best git wrapper, ever (Says the author)
Bundle 'tpope/vim-fugitive'

" Shows added, modified and deleted lines on git repos
Bundle 'airblade/vim-gitgutter'

" HTML tags and other improvements for '%'
Bundle 'vim-scripts/matchit.zip'

" Snippets, this is my fork to add some stuff
Bundle 'InFog/snipmate.vim'

" Improves colors for terminals
Bundle 'godlygeek/csapprox'

" You know, Twig, PHP...
Bundle 'evidens/vim-twig'

" Relative line numbers in normal mode and absolute in insert mode (magic)
Bundle 'myusuf3/numbers.vim'

" HTML5, Vim will have it some day (Maybe it already does)
Bundle 'othree/html5.vim'

" CSS3, same as HTML5
Bundle 'hail2u/vim-css3-syntax'

" My stuff, if you are not me and are not writing a book for Casa do Código,
" you don't need it.
Bundle 'vinibaggio/vim-tubaina'

" Go Lang
"
" Add to bashrc/zshrc:
" export GOROOT=$HOME/.go
" export PATH=$PATH:$GOROOT/bin
"
" And then...
" go get github.com/nsf/gocode
Bundle 'Blackrush/vim-gocode'

" Show trailing spaces
Bundle 'bronson/vim-trailing-whitespace'

" Some colorschemes
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'spf13/vim-colors'
Bundle 'baskerville/bubblegum'
Bundle 'jnurmine/Zenburn'

"
" And now some bundles that need any additional configs
"

" Tagbar to show the file's tags (depends on exuberant-ctags)
Bundle 'majutsushi/tagbar'
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=2 "Relative, welcome
" PHPtagbar : remember to run cd ~/.vim/bundle/tagbar-phpctags.vim && make
Bundle 'vim-php/tagbar-phpctags.vim'
nnoremap <leader>l :TagbarToggle<CR>

" Airline : Nice statusbar, shows a lot of stuff and some git info
Bundle 'bling/vim-airline'
let g:airline_theme='zenburn'
let g:airline_powerline_fonts=0
let g:airline_detect_paste=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1

" PDV : Docblocks for PHP the easy way
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
nnoremap <leader>doc :call PhpDocSingle()<CR>
vnoremap <leader>doc :call PhpDocRange()<CR>

" Syntastic : Check sytax errors and some other stuff like codestyle
Bundle 'scrooloose/syntastic'
let g:syntastic_php_checkers=['php']
let g:syntastic_python_checkers=['pep8', 'pylint']
let g:syntastic_python_pep8_args='--ignore=E501'
" Example
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" PHPQATools
Bundle 'joonty/vim-phpqa'
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 0
nnoremap <leader>md :Phpmd<CR>
vnoremap <leader>md :Phpmd<CR>

" VDebug : DBGP (xdebug and others)
Bundle 'joonty/vdebug'
let g:vdebug_options = {'server': '0.0.0.0'}

" VDebug for xdebug (PHP)
" xdebug.remote_autostart = On
" xdebug.remote_enable = On
" xdebug.remote_host = localhost
" xdebug.remote_port = 9000

" Matchmaker : Highligths word under the cursor
Bundle 'qstrahl/vim-matchmaker'
let g:matchmaker_enable_startup = 1

"
" And now some default Vim options
"
syntax enable

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vimundo      " Dir with undo files
    set undofile                " Persistent undo
    set undolevels=1000
    set undoreload=10000
endif

set nobackup
set noswapfile      " Do not use those annoying swap files

set hidden          " Allow hiding not saved buffers

set encoding=utf-8
set showmode        " Display current mode
set wildmenu        " Allows using tab for vim commands
set background=dark
set nu              " line numbers
set ai              " Auto indentation
set ts=4            " 4 spaces for tab
set sw=4            " 4 spaces for tab
set softtabstop=4   " Backspace also respects tabs with 4 spaces
set et              " No tabs, please, use spaces (no flamewars here, please, okthanksbye)
set ruler           " Cursors position
set cursorline      " Highlights line under cursor
set laststatus=2    " Statusbar is always there
set clipboard=unnamedplus   " Copy from Vim to clipboard
" set ttyfast
set lazyredraw

set autoread        " Reloads files that where updated after opening them in Vim

"set tw=80           " text width
"set colorcolumn=81  " color for the 80th column
set incsearch       " incremental search
set hlsearch        " Highligth search :)
set ignorecase      " Ignore case for searching
set smartcase       " If your search has upcase letters, do not ignore case

" Maps, shortcuts, etc
"
" Cleaning search highlight
nmap <silent> <leader>/ :nohlsearch<CR>

" File explorer
let g:netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'
map <leader>t :Explore<CR>
map <leader>T :split<CR> :Explore<CR>

" Arrows? Nope. (If you want to have arrows just remove the lines below)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Want some :help?
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Maps ; to :
nnoremap ; :

" I use jj as ESC, if you want ESC to behave the vim way, remove the lines below
inoremap jj <ESC>
inoremap <ESC> <nop>

" Tabs
nmap <silent> tn :tabnew<CR>
nmap <silent> tc :tabclose<CR>
nmap <silent> tq :tabclose<CR>

" Splits
nmap <silent> <leader>s :split<CR>
nmap <silent> <leader>S :vsplit<CR>

" keep the selection after indentation using << and >>
vnoremap < <gv
vnoremap > >gv

:filetype plugin on
:filetype plugin indent on

" To remove trailing spaces
nnoremap <leader>w :%s/\s\+$//<CR>

" To you want nice colors on your terminal?
" Add the folowing to your bashrc (or the file for your shell)
" export TERM="xterm-256color"

" Some nice colors
" colo zenburn
" let g:solarized_termcolors=256
colorscheme zenburn

" Using PHP syntax for 'thtml' files.
au BufNewFile,BufRead *.thtml setfiletype php

" Markdown syntax for 'md' files.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
