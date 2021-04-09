Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

autocmd FileType go nmap <leader>d :GoDef<CR>

if has('nvim')
    Plug 'ncm2/ncm2-go', { 'do': ':!go get -u github.com/mdempsky/gocode' }
endif
