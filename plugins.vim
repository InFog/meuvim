" And now, some bundles

" Colorschemes
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'

" Prettier to auto format code using <Leader>p
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

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

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

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
    \ 'colorscheme': 'PaperColor',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
    \ 'coc-diagnostic',
    \ 'coc-go',
    \ 'coc-tsserver',
    \ 'coc-jedi',
    \ 'coc-solargraph',
    \ 'coc-phpls']
set updatetime=300
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <leader>d <Plug>(coc-definition)
nmap <leader>y <Plug>(coc-type-definition)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>r <Plug>(coc-references)
