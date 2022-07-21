" And now, some bundles
"
" Some colorschemes
Plug 'NLKNguyen/papercolor-theme'

" Options to delete, select, copy, etc inside tags and other block symbols
Plug 'tpope/vim-surround'

" Snippets, this is my fork to add some stuff
Plug 'InFog/snipmate.vim'

" Relative line numbers in normal mode and absolute in insert mode (magic)
Plug 'myusuf3/numbers.vim'

" Show trailing spaces
Plug 'bronson/vim-trailing-whitespace'

" Ack search tool
Plug 'mileszs/ack.vim'

" Managing tab titles
Plug 'gcmt/taboo.vim'

" Commenting
Plug 'preservim/nerdcommenter'
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Highlights word under the cursor
Plug 'dominikduda/vim_current_word'
let g:vim_current_word#highlight_current_word = 0

" Show the marks
Plug 'jeetsukumaran/vim-markology'
let g:markology_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" Shows added, modified and deleted lines on git repos
Plug 'mhinz/vim-signify'

" Git goodies
Plug 'tpope/vim-fugitive'

" Improved autocomplete
if has('nvim')
    Plug 'ncm2/ncm2', { 'do': 'pip3 install neovim' }
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

" Ale: syntax checker
Plug 'dense-analysis/ale'
let g:ale_fix_on_save = 0
let g:ale_python_auto_poetry = 1
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'python': ['pylint'],
\}
