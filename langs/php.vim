" PHP Documentation
Plug 'alvan/vim-php-manual'

" Automatically inserts getters and setters for PHP.
Plug 'docteurklein/php-getter-setter.vim'

" phpactor - autocomplete/refactoring for PHP
Plug 'phpactor/phpactor', { 'do': 'composer install' }

Plug 'vim-php/phpctags', {'do': 'composer install' }
Plug 'vim-php/tagbar-phpctags.vim', { 'do': 'make' }

Plug 'lumiliet/vim-twig'

autocmd FileType php nmap <leader>u :call phpactor#UseAdd()<CR>
autocmd FileType php nmap <leader>d :call phpactor#GotoDefinition()<CR>
autocmd FileType php nmap <leader>n :call phpactor#Navigate()<CR>
autocmd FileType php nmap <leader>m :call phpactor#ContextMenu()<CR>

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
autocmd FileType php nnoremap <leader>md :Phpmd<CR>
autocmd FileType php vnoremap <leader>md :Phpmd<CR>

" Using PHP syntax for 'thtml' files.
au BufNewFile,BufRead *.thtml setfiletype php
