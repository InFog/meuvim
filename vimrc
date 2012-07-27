" vimrc
"
" vimrc por InFog (Evaldo Junior <junior@casoft.info>)
"
" http://infog.casoft.info
"
" Este vimrc pode ser acompanhado pelo GitHub em:
" https://github.com/InFog/meuvim
"
" Esta opção é padrão do Debian e eu não a removi
runtime! debian.vim

"
"Agora começam as opções do VIM

syntax on           " Habilita a marcação de sintaxe
set background=dark " Define o fundo preto (É melhor usar isso com a sintaxe)
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab
set ts=4            " tab vale 4 espaços
set sw=4            " tab com 4 espaços
set et              " Troca tabs por espaços
set ruler           " Mostra a posição do cursor
set cursorline      " Destaca a linha atual
set relativenumber  " A numeração das listas é feita de forma relativa. Muito boa essa opção =D

set autoread        " Recarrega arquivos alterados em disco automaticamente

set tw=80           " Define a largura do texto como 80 caracteres
set colorcolumn=81  " Deixa a coluna 80 colorida
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)
set ignorecase      " Pesquisa ignora caixa alta e baixa

" Atalho para o set relativenumber
map ,reln <ESC>:set relativenumber<CR>

" Fechando chaves, parenteses, colchetes e aspas
" Troquei estes mapeamentos pelo Auto Pairs
" inoremap { {}<esc>i
" inoremap ( ()<esc>i
" inoremap [ []<esc>i
" inoremap " ""<esc>i
" inoremap ' ''<esc>i

" Opções para que blocos selecionados sejam reselecionados após identações.
" Ajuda muito na hora de identar grandes e confusos blocos =)
vnoremap < <gv
vnoremap > >gv

:filetype plugin on

source ~/.vim/plugin/php-doc.vim

" Opções para o NERDTree
map <F5> <ESC>:NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1       " Destaca a linha atual
let NERDTreeShowHidden=1                " Lista arquivos ocultos
let NERDTreeIgnore=['\.*swp$', '\.*pyc$', '^\.git$', '^\.hg$']          " Arquivos que não serão exibidos.

" Opções para o TagList
nnoremap <silent> <F6> :TlistToggle<CR>
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Sort_Type="name"              " Ordenar pelo nome e não pela ordem no arquivo

" Escondendo variáveis no TagList para PHP
let tlist_php_settings='php;c:Classes;f:Functions'

" PDV (phpDocumentator for Vim)
nnoremap ,doc :call PhpDocSingle()<CR>
vnoremap ,doc :call PhpDocRange()<CR>

" Identação de todo o documento
inoremap <C-I> <ESC>gg=G<CR>
nnoremap <C-I> <ESC>gg=G<CR>
vnoremap <C-I> <ESC>gg=G<CR>

" Tasklist
" nnoremap <C-T> <ESC>:TaskList<CR>

" Para as cores funcionarem bem é preciso usar 256 cores no terminal.
" No bashrc, zshrc ou similar, faça algo como
" export TERM="xterm-256color"

" Cores a considerar:
" colo lucius
" colo tir_black
" colo delek
" colo vibrantink
" colo freya
" colo zenburn
" colo darkburn
" colo jellybeans
colo bensday

" Definindo sintaxe PHP para arquivos com a extensão 'thtml'.
au BufNewFile,BufRead *.thtml setfiletype php

" Definindo snippets para django
autocmd FileType python set ft=python.django " SnipMate
autocmd FileType html set ft=htmldjango.html " SnipMate

" Obvious mode
set laststatus=2
