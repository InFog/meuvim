" And now, some bundles
"
" Options to delete, select, copy, etc inside tags and other block symbols
Bundle 'tpope/vim-surround'

" The best git wrapper, ever (Says the author)
Bundle 'tpope/vim-fugitive'

" HTML tags and other improvements for '%'
Bundle 'vim-scripts/matchit.zip'

" Snippets, this is my fork to add some stuff
Bundle 'InFog/snipmate.vim'

" Lots of languages: https://github.com/sheerun/vim-polyglot
Bundle 'sheerun/vim-polyglot'

" Improves colors for terminals
Bundle 'godlygeek/csapprox'

" Relative line numbers in normal mode and absolute in insert mode (magic)
Bundle 'myusuf3/numbers.vim'

" Show trailing spaces
Bundle 'bronson/vim-trailing-whitespace'

" Show the marks
Bundle 'jeetsukumaran/vim-markology'
let g:markology_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

" Shows added, modified and deleted lines on git repos
Bundle 'mhinz/vim-signify'

" Some colorschemes
" Bundle 'jnurmine/Zenburn'
Bundle 'NLKNguyen/papercolor-theme'

" grep/ack and other search utilities
Bundle 'yegappan/grep'

" Improved autocomplete
Bundle 'ncm2/ncm2'
Bundle 'roxma/nvim-yarp'

autocmd BufEnter * call ncm2#enable_for_buffer()

" Tagbar to show the file's tags (depends on exuberant-ctags)
Bundle 'majutsushi/tagbar'
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=2

" Statusline
Bundle 'itchyny/lightline.vim'
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
Bundle 'scrooloose/syntastic'
let g:syntastic_php_checkers=['php']
let g:syntastic_python_checkers=['pep8', 'pylint']
let g:syntastic_python_pep8_args='--ignore=E501'
" Example
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" CtrlP, a fuzzy finder
Bundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<leader>f'
set wildignore+=vendor/*

