" JavaScript
Plug 'posva/vim-vue'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:prettier#autoformat = 0
let g:prettier#config#trailing_comma = 'e5'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#end_of_line = 'auto'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

if has('nvim')
    Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }
endif

" Extra setup
autocmd Filetype javascript setlocal ts=2 sw=2 softtabstop=2
autocmd Filetype javascriptreact setlocal ts=2 sw=2 softtabstop=2
