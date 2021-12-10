Plug 'davidhalter/jedi-vim', { 'do': 'pip install jedi' }

if has('nvim')
    " Requires 'ncm2/ncm2'
    Plug 'ncm2/ncm2-jedi', { 'do': 'pip install pylint pynvim' }
endif
