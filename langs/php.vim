" PHP Documentation
Plug 'alvan/vim-php-manual'

" Automatically inserts getters and setters for PHP.
Plug 'docteurklein/php-getter-setter.vim'

" phpactor - autocomplete/refactoring for PHP
Plug 'phpactor/phpactor', { 'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o' }

Plug 'vim-php/phpctags', {'do': 'composer install' }
Plug 'vim-php/tagbar-phpctags.vim', { 'do': 'make' }

Plug 'lumiliet/vim-twig'

" autocmd FileType php nmap <leader>u :call phpactor#UseAdd()<CR>
" autocmd FileType php nmap <leader>d :call phpactor#GotoDefinition()<CR>
" autocmd FileType php nmap <leader>n :call phpactor#Navigate()<CR>
" autocmd FileType php nmap <leader>m :call phpactor#ContextMenu()<CR>

" Using PHP syntax for 'thtml' files.
au BufNewFile,BufRead *.thtml setfiletype php
