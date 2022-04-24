" JavaScript
Plug 'posva/vim-vue'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

if has('nvim')
    Plug 'ncm2/ncm2-tern', { 'do': 'npm install && npm install -g tern' }
endif

" Extra setup
autocmd Filetype javascript setlocal ts=2 sw=2 softtabstop=2
