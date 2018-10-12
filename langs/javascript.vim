" JavaScript
Plug 'posva/vim-vue'

if has('nvim')
    Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }
endif

" Extra setup
autocmd Filetype javascript setlocal ts=2 sw=2 softtabstop=2
