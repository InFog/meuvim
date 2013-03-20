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
" Linha de status bem completa, tem até git.
Bundle 'Lokaltog/powerline'

" Esquema de cores
Bundle 'altercation/vim-colors-solarized'

" Verifica sintaxe e exibe erros
Bundle 'scrooloose/syntastic'

" Navegador de arquivos e diretórios
Bundle 'scrooloose/nerdtree'

" Lista de classes e métodos em um arquivo
Bundle 'vim-scripts/taglist.vim'

" Navegador para os buffers abertos
Bundle 'vim-scripts/bufexplorer.zip'

" Adiciona opções para apagar, selecionar, etc dentro de tags, aspas, etc.
Bundle 'tpope/vim-surround'

" O melhor wrapper Git de todos os tempos =P
Bundle 'tpope/vim-fugitive'

" Adiciona tags html e mais umas coisinhas para o %
Bundle 'vim-scripts/matchit.zip'

" Fecha automaticamente aspas, chaves, parênteses...
Bundle 'Townk/vim-autoclose'

" Snippets, este é meu fork
Bundle 'InFog/snipmate.vim'

" Facilita a adição de Docblocks no PHP
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'

" Melhora os temas para terminais
Bundle 'godlygeek/csapprox'

" Integração com o Twig
Bundle 'evidens/vim-twig'

" Números das linhas relativo no modo normal e absoluto no modo insert
Bundle 'myusuf3/numbers.vim'

" Iniciando os Bundles
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Daqui para baixo são as minhas opções

syntax enable       " Habilita a marcação de sintaxe
set encoding=utf-8
set showmode        " Exibe o modo atual
set wildmenu        " Menu com as opções do vim usando tab
set background=dark " Define o fundo preto (É melhor usar isso com a sintaxe)
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab/auto indent
set ts=4            " tab vale 4 espaços
set sw=4            " tab com 4 espaços
set softtabstop=4   " Operações como o backspace também com 4 espaços
set et              " Troca tabs por espaços
set ruler           " Mostra a posição do cursor
set cursorline      " Destaca a linha atual
set laststatus=2    " Sempre exibe a barra de status

set autoread        " Recarrega arquivos alterados em disco automaticamente

"set tw=80           " Define a largura do texto como 80 caracteres
set colorcolumn=81  " Deixa a coluna 80 colorida
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)
set ignorecase      " Pesquisa ignora caixa alta e baixa
set smartcase       " Pesquisa considera caixa alta apenas se ouver uma ou mais maiúsculas na pesquisa

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
let NERDTreeShowLineNumbers=0
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.*swp$', '\.*pyc$', '^\.git$', '^\.hg$']          " Arquivos que não serão exibidos.

" Opções para o TagList
nnoremap ,l :TlistToggle<CR>
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Sort_Type="name"              " Ordenar pelo nome e não pela ordem no arquivo
" Escondendo variáveis no TagList para PHP
let tlist_php_settings='php;c:Classes;f:Functions'

" Mapeando função do PHPDoc
nnoremap ,doc :call PhpDocSingle()<CR>
vnoremap ,doc :call PhpDocRange()<CR>

" Falando em PHP, escolhendo o verificador para PHP:
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers=['php']

" Para as cores funcionarem bem é preciso usar 256 cores no terminal.
" No bashrc, zshrc ou similar, faça algo como
" export TERM="xterm-256color"

" Cores a considerar:
" colo zenburn
let g:solarized_termcolors=256
colorscheme solarized

" Definindo sintaxe PHP para arquivos com a extensão 'thtml'.
au BufNewFile,BufRead *.thtml setfiletype php
