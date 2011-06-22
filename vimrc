"
" vim.rc feito por InFog (Evaldo Junior)
" http://infog.casoft.info
"
" Esta opção é padrão do Debian e eu não a removi
runtime! debian.vim
"
"Agora começam as opções =)

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

set tw=130          " Define a largura do texto como 130 caracteres
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)

" Fechando chaves, parenteses, colchetes e aspas
inoremap { {}<esc>i 
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i

" Mapeando teclas =)
map <F5> :NERDTreeToggle<CR>

:filetype plugin on

source ~/.vim/plugin/php-doc.vim

" PHP auto complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" PDV (phpDocumentator for Vim)
inoremap <C-L> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-L> :call PhpDocSingle()<CR>
vnoremap <C-L> :call PhpDocRange()<CR>

" Esquema de cor
colo lucius

" Bastante chamativo quando entra no modo de insersção :)
set laststatus=2 

" colo tir_black
" colo delek

" Esse tema é bem 'eye friendly' =)

" colo vibrantink
" colo zenburn

" POG... não sei por que, mas colocando o vibrant primeiro o zenburn
" funciona...

" Definindo sintaxe PHP para arquivos com a extensão 'thtml'.
au BufNewFile,BufRead *.thtml setfiletype php
