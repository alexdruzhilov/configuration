set nocompatible

" filetype off

execute pathogen#infect()
call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()

syntax enable

" set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" set 265 colors (should be done for custom colorschemes)
let &t_Co=256

" color scheme options
colorscheme mustang
set background=dark

" always show status line
set laststatus=2

" Tabstops are 4 spaces
set tabstop=4               " a tab is 2 spaces
set shiftwidth=4            " number of spaces to use for autoindenting
set smarttab                " insert tabs on the start of a line according to shiftwidth, not tabstop
set autoindent              " always set autoindenting on
set copyindent              " copy the previous indentation on autoindenting
set shiftround              " use multiple of shiftwidth when indenting with '<' and '>'

" don't beep
set visualbell
set noerrorbells

" set color column on 80 symbols
"set colorcolumn=80

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the 'must save first' error doesn't come up)
set hidden

" don't wrap lines
set nowrap

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" don't make any backups
set nobackup
set nowritebackup
set noswapfile

" always show line numbers
set number

" more natural opening new windows (right and bottom)
set splitbelow
set splitright

" search params
set showmatch                  " set show matching parenthesis
set ignorecase                 " ignore case when searching
set smartcase                  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch                   " highlight search terms
set incsearch                  " show search matches as you type

set history=1000               " remember more commands and search history
set undolevels=1000            " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                      " change the terminal's title
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

autocmd filetype html,xml set listchars-=tab:>.

" save file from sudo on w!!
cmap w!! w !sudo tee % >/dev/null

" ctrl+h/j/k/l will to go to another window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move line up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" clear selection highlight
nnoremap <F3> :set hlsearch!<CR>

" mappings to move line up/down
" noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
" noremap <c-s-down> ddp


