" JavaScript
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

let b:ale_fixers = ['prettier']
let g:ale_fix_on_save = 0

if has('nvim')
    Plug 'ncm2/ncm2-tern', { 'do': 'npm install && npm install -g tern' }
endif

" Extra setup
autocmd Filetype javascript setlocal ts=2 sw=2 softtabstop=2
autocmd Filetype javascriptreact setlocal ts=2 sw=2 softtabstop=2
