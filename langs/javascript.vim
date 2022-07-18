" JavaScript
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

autocmd FileType javascript nmap <leader>d :ALEGoToDefinition<CR>

if has('nvim')
    Plug 'ncm2/ncm2-tern', { 'do': 'npm install && npm install -g tern' }
endif

" Extra setup
autocmd Filetype javascript setlocal ts=2 sw=2 softtabstop=2
autocmd Filetype javascriptreact setlocal ts=2 sw=2 softtabstop=2
