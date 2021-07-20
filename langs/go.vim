Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

autocmd FileType go nmap <leader>d :GoDef<CR>
autocmd FileType go nmap <leader>u :GoCallers<CR>

if has('nvim')
    Plug 'ncm2/ncm2-go', { 'do': ':!go get -u github.com/mdempsky/gocode' }
endif
