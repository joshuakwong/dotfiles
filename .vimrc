set mouse=a
syntax enable
colorscheme molokai
set number
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4 expandtab
set autoindent
set cindent
set backspace=2
set tabpagemax=1000


" status line, :help statusline
" %f path to file
" %l current line
" %L total number of lines
" %o byte offset from beginning
set laststatus=2
set statusline=
set statusline+=%f
set statusline+=\ %h%m%r%w
set statusline+=%=
set statusline+=%l:%c\ %L\
" set statusline+=%p%% " percentage


set showmatch
filetype plugin indent on
inoremap ;; <esc>
inoremap '; <esc>
inoremap ;' <esc>

" hightlight search
set hlsearch
nnoremap \\ :noh<return>:<esc>
" highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234


"keep cursor in the middle of the screen
"augroup VCenterCursor
"  au!
"  au BufEnter,WinEnter,WinNew,VimResized *,*.*
"        \ let &scrolloff=winheight(win_getid())/2
"augroup END
set scrolloff=999

noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$


" Use case insensitive search, except when using capital letters
" use incremental search
set ignorecase
set smartcase
set incsearch

set foldenable
set foldmethod=syntax
set foldlevelstart=10

set showtabline=2
