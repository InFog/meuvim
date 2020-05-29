Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
if has('nvim')
    Plug 'ncm2/ncm2-go', { 'do': ':!go get -u github.com/mdempsky/gocode' }
endif
