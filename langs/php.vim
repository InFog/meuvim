" PHP Documentation
Plug 'alvan/vim-php-manual'

" phpactor - autocomplete/refactoring for PHP
Plug 'phpactor/phpactor', { 'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o' }

Plug 'vim-php/phpctags', {'do': 'composer install' }
Plug 'vim-php/tagbar-phpctags.vim', { 'do': 'make' }

" Using PHP syntax for 'thtml' files.
au BufNewFile,BufRead *.thtml setfiletype php
