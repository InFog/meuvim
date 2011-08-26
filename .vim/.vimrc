"
" vim.rc feito por InFog (Evaldo Junior)
" http://infog.casoft.info
"
" Esta opção é padrão do Debian e eu não a removi
runtime! debian.vim
"
"Agora começam as opções =)

"Forget compatibility with Vi. Who cares. //Jeffrey Way
set nocompatible

" Limpa as configurações de cores
hi clear
syntax reset

syntax on           " Habilita a marcação de sintaxe
set background=dark " Define o fundo preto (É melhor usar isso com a sintaxe)
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab
set ts=4            " tab vale 4 espaços
set sw=4            " tab com 4 espaços
set et              " Troca tabs por espaços
set ruler           " Mostra a posição do cursor
set cursorline      " Destaca a linha atual
set showmatch       " Exibe parênteses de fechamento

set mouse=a         " Uso do mouse para todas as tarefas

set nowrap          " Não quebre a linha,
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)

" Fechando chaves, parenteses, colchetes e aspas
inoremap { {}<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i

" Opções para que blocos selecionados sejam reselecionados após identações.
" Ajuda muito na hora de identar grandes e confusos blocos =)
vnoremap < <gv
vnoremap > >gv

filetype plugin on

" Mapeando teclas =)
map <F5> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1                               " Destaca a linha atual
let NERDTreeShowHidden=1                                        " Lista arquivos ocultos
let NERDTreeIgnore=['\.*swp$', '\.*pyc$', '^\.git$']            " Arquivos que não serão exibidos.

" Opções para o TagList
nnoremap <silent> <F6> :TlistToggle<CR>
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Sort_Type="name"              " Ordenar pelo nome e não pela ordem no arquivo

" Escondendo variáveis no TagList para PHP
let tlist_php_settings='php;c:Classes;f:Functions'

source ~/.vim/plugin/php-doc.vim

" PHP auto complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" PDV (phpDocumentator for Vim)
inoremap <C-L> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-L> :call PhpDocSingle()<CR>
vnoremap <C-L> :call PhpDocRange()<CR>

" Esquema de cor
colo lucius

" Cores dos comentários em cinza
hi Comment ctermfg=DarkGrey guifg=DarkGrey

" Bastante chamativo quando entra no modo de insersção :)
set laststatus=2

" Esse tema é bem 'eye friendly' =)

" colo vibrantink
" colo zenburn

" POG... não sei por que, mas colocando o vibrant primeiro o zenburn
" funciona...

" Definindo sintaxe PHP para arquivos com a extensão 'thtml'.
au BufNewFile,BufRead *.thtml setfiletype php

" Definindo snippets para django
autocmd FileType python set ft=python.django " SnipMate
autocmd FileType html set ft=htmldjango.html " SnipMate


