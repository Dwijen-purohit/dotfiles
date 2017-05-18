set nocompatible                " choose no compatibility with legacy vi

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add nerd tree
Plugin 'scrooloose/nerdtree'
" Add vim-go
Plugin 'fatih/vim-go'
" Add paper color
Plugin 'NLKNguyen/papercolor-theme'
" Add fuzzy file search
Plugin 'ctrlpvim/ctrlp.vim'
" Add visual indent line guide
Plugin 'Yggdroot/indentLine'
" Add autocomplete for Parens
Plugin 'jiangmiao/auto-pairs'
" Add neocomplete for autocomplete
Plugin 'Shougo/neocomplete.vim'
" Search in files
Plugin 'mileszs/ack.vim'
" Syntax highlighting for Thrift
Plugin 'solarnz/thrift.vim'
" Vim Tmux Navigator
Plugin 'christoomey/vim-tmux-navigator'
" Syntax Linter
Plugin 'vim-syntastic/syntastic'
" Vim session storage
Plugin 'tpope/vim-obsession'
" Git
Plugin 'tpope/vim-fugitive'
" Git Gutter
Plugin 'airblade/vim-gitgutter'
" Emmet for VIM (Tag completion)
Plugin 'mattn/emmet-vim'
" Multi Cursor for sublime like Ctrl-D
Plugin 'terryma/vim-multiple-cursors'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set encoding=utf-8
set showcmd                           " display incomplete commands
filetype plugin indent on             " load file type plugins + indentation
set noswapfile                        " don't create swap files
set autoread                          " reload files when written to disk
set statusline+=%f                    " Show current Filename in Status Line
set statusline+=%{ObsessionStatus()}  " Show if session recording is active
set colorcolumn=80                    " Highlight column 80
"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set number                      " show line numbers
set rnu                         " show relative line numbers

" Colorscheme
set runtimepath+=~/.vim/colors/*
set t_Co=256
set background=dark
colorscheme quantum

" Go Syntax settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1 

" Run goimports when running gofmt
au FileType go let g:go_fmt_command = "goimports"

" Indent Line settings
let g:indentLine_char = '¦'

" Autocomplete settings
let g:acp_enableAtStartup = 0		                          " Disable AutoComplPop.
let g:neocomplete#enable_at_startup = 1   
let g:neocomplete#enable_smart_case = 1                   " Use smartcase.
let g:neocomplete#sources#syntax#min_keyword_length = 3   " Set minimum syntax keyword length.

" Set tags for easy GoToDef
" ctags optimization
set autochdir
set tags=tags;

" Syntax linting settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['eslint']

" NERDTree shortcuts
:nnoremap <C-d> :NERDTreeToggle<CR>
