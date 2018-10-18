Plug 'davidhalter/jedi-vim'

if has('nvim')
    " Requires 'ncm2/ncm2'
    Plug 'ncm2/ncm2-jedi', { 'do': 'pip install jedi' }
endif
