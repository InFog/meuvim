" vimrc
"
" Criado por InFog - Evaldo Junior <evaldojuniorbento@gmail.com>
" Inspirado em vários outros vimrc's por aí
"
" http://infog.casoft.info
"
" Este vimrc pode ser acompanhado pelo GitHub em:
" https://github.com/InFog/meuvim

set nocompatible
filetype off

" Estou usando o Vundle para gerenciar os bundles
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Agora os bundles
Bundle 'Lokaltog/powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Townk/vim-autoclose'

" Iniciando os Bundles
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Daqui para baixo são as minhas opções

syntax enable           " Habilita a marcação de sintaxe
set showmode        " Exibe o modo atual
set wildmenu        " Menu com as opções do vim usando tab
set background=dark " Define o fundo preto (É melhor usar isso com a sintaxe)
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab
set ts=4            " tab vale 4 espaços
set sw=4            " tab com 4 espaços
set softtabstop=4   " Operações como o backspace também com 4 espaços
set et              " Troca tabs por espaços
set ruler           " Mostra a posição do cursor
set cursorline      " Destaca a linha atual
set relativenumber  " A numeração das listas é feita de forma relativa. Muito boa essa opção =D

set autoread        " Recarrega arquivos alterados em disco automaticamente

"set tw=80           " Define a largura do texto como 80 caracteres
set colorcolumn=81  " Deixa a coluna 80 colorida
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)
set ignorecase      " Pesquisa ignora caixa alta e baixa

" Opções para que blocos selecionados sejam reselecionados após identações.
" Ajuda muito na hora de identar grandes e confusos blocos =)
vnoremap < <gv
vnoremap > >gv

:filetype plugin on
:filetype plugin indent on

" Opções para o NERDTree
map ,t <ESC>:NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1       " Destaca a linha atual
let NERDTreeShowHidden=1                " Lista arquivos ocultos
" let NERDTreeShowLineNumbers=1
let NERDTreeIgnore=['\.*swp$', '\.*pyc$', '^\.git$', '^\.hg$']          " Arquivos que não serão exibidos.

" Opções para o TagList
nnoremap ,l :TlistToggle<CR>
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Sort_Type="name"              " Ordenar pelo nome e não pela ordem no arquivo

" Escondendo variáveis no TagList para PHP
let tlist_php_settings='php;c:Classes;f:Functions'

" Para as cores funcionarem bem é preciso usar 256 cores no terminal.
" No bashrc, zshrc ou similar, faça algo como
" export TERM="xterm-256color"

" Cores a considerar:
" colo zenburn
let g:solarized_termcolors=256
colorscheme solarized


" Definindo sintaxe PHP para arquivos com a extensão 'thtml'.
au BufNewFile,BufRead *.thtml setfiletype php

" Obvious mode
set laststatus=2
