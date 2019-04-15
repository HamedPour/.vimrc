set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"Plugin to help with folding of function and other such folding.
Plugin 'tmhedberg/SimpylFold'

"Auto Indentation for Python.
Plugin 'vim-scripts/indentpython.vim'

" Close Tag plugin
Plugin 'alvan/vim-closetag'

" Auto Close
Plugin 'townk/vim-autoclose'

"You complete me! Let's see if this works
Plugin 'Valloric/YouCompleteMe'

"Syntax checking
Plugin 'vim-syntastic/syntastic'

"PEP 8 checking
Plugin 'nvie/vim-flake8'

"Nerd Tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Emmet for Vim
Plugin 'mattn/emmet-vim'

"Easy Motion
Plugin 'easymotion/vim-easymotion'

"Super Searching with Gtrlp
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"""""""""""""""""""""""""""""""""""""""****************Hamed is HERE!!!***************""""""""""""""""""""""""""

"Font size
set guifont=Monaco:h20


set number relativenumber
set nu rnu

set splitbelow
set splitright

" Emmet Trigger ShortCut
let g:user_emmet_leader_key='<C-Q>'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" PEP 8 indentation Python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

"UTF-8 support
set encoding=utf-8

" YouCompleteMe plguin configering ... well a little
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Make your code look pretty!!!
let python_highlight_all=1
syntax on

"Hide .pyc files in Nerd Tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Nerd tree shortcut
nnoremap <f2> :NERDTreeToggle<Enter>


"map ctrl+space to move cursor right by one
inoremap <C-Space> <Right>

"Run python code from inside vim with f9
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

"Add some extra python flar
set expandtab
set showmatch
set ts=4

"EasyMotion configuration*********
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"Those stupid lines that go over 80 chars! 
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" **************************************************** Close Tag Options
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified 
" files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified 
" files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` 
" will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'
" ************************************************* Close Tag Option End
" Change cursor in insert mode to show underline
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" change line number color - keep this at the bottom of the vimrc
highlight LineNr term=bold cterm=NONE ctermfg=Green  ctermbg=NONE 
highlight CursorLineNr term=bold cterm=NONE ctermfg=Green  ctermbg=NONE 
