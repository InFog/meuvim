" And now, some bundles
"
" Options to delete, select, copy, etc inside tags and other block symbols
Plug 'tpope/vim-surround'

" The best git wrapper, ever (Says the author)
Plug 'tpope/vim-fugitive'

" HTML tags and other improvements for '%'
Plug 'vim-scripts/matchit.zip'

" Snippets, this is my fork to add some stuff
Plug 'InFog/snipmate.vim'

" Lots of languages: https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Improves colors for terminals
Plug 'godlygeek/csapprox'

" Relative line numbers in normal mode and absolute in insert mode (magic)
Plug 'myusuf3/numbers.vim'

" Show trailing spaces
Plug 'bronson/vim-trailing-whitespace'

" Show the marks
Plug 'jeetsukumaran/vim-markology'
let g:markology_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

" Shows added, modified and deleted lines on git repos
Plug 'mhinz/vim-signify'

" Some colorschemes
" Plug 'jnurmine/Zenburn'
Plug 'NLKNguyen/papercolor-theme'

" grep/ack and other search utilities
Plug 'yegappan/grep'

" Improved autocomplete
if has('nvim')
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    autocmd BufEnter * call ncm2#enable_for_buffer()
    set completeopt=noinsert,menuone,noselect
    set shortmess+=c
endif

" Tagbar to show the file's tags (depends on exuberant-ctags)
Plug 'majutsushi/tagbar'
nnoremap <leader>l :TagbarToggle<CR>
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=2

" Statusline
Plug 'itchyny/lightline.vim'
let g:lightline = {
    \ 'colorscheme': 'PaperColor_light',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

" Syntastic : Checks syntax errors and some other stuff like codestyle
Plug 'scrooloose/syntastic'
let g:syntastic_php_checkers=['php']
let g:syntastic_python_checkers=['pep8', 'pylint']
let g:syntastic_python_pep8_args='--ignore=E501'
" Example
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
