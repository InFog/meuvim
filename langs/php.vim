" PHP Documentation
Plug 'alvan/vim-php-manual'

" Automatically inserts getters and setters for PHP.
Plug 'docteurklein/php-getter-setter.vim'

" phpactor - autocomplete/refactoring for PHP
Plug 'phpactor/phpactor', { 'do': 'composer install' }

Plug 'InFog/phpctags', {'do': 'composer install' }
Plug 'InFog/tagbar-phpctags.vim', { 'do': 'make' }

Plug 'lumiliet/vim-twig'

nmap <leader>u :call phpactor#UseAdd()<CR>
nmap <leader>d :call phpactor#GotoDefinition()<CR>
nmap <leader>n :call phpactor#Navigate()<CR>
nmap <leader>m :call phpactor#ContextMenu()<CR>

if has('nvim')
    " Requires 'ncm2/ncm2'
    Plug 'phpactor/ncm2-phpactor'
    autocmd FileType php setlocal omnifunc=phpactor#Complete
    let g:phpactorOmniError = v:true
endif

" PHPQATools
Plug 'joonty/vim-phpqa'
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 0
nnoremap <leader>md :Phpmd<CR>
vnoremap <leader>md :Phpmd<CR>

" VDebug : DBGP (xdebug and others)
Plug 'joonty/vdebug'
let g:vdebug_options = {'server': '0.0.0.0'}

" VDebug for xdebug (PHP) (Add the following lines to php.ini)
" IMPORTANT: This extension still requires Python2. Use Vim 7.x or NeoVim.
" xdebug.remote_autostart = On
" xdebug.remote_enable = On
" xdebug.remote_host = localhost
" xdebug.remote_port = 9000

" Using PHP syntax for 'thtml' files.
au BufNewFile,BufRead *.thtml setfiletype php
