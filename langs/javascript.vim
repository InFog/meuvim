" JavaScript
Plug 'posva/vim-vue'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'

let b:ale_fixers = ['prettier']
let g:ale_fix_on_save = 1

if has('nvim')
    Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }
endif

" Extra setup
autocmd Filetype javascript setlocal ts=2 sw=2 softtabstop=2
autocmd Filetype javascriptreact setlocal ts=2 sw=2 softtabstop=2
