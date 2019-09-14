" WELCOME TO THE JUNGLE

" ---------------------- Pathogen plugins - START
execute pathogen#infect()
filetype plugin indent on

" NerdTree plugin
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-\> :NERDTreeToggle<CR>

" Airline theme plugin
let g:airline_theme='kolor'

" Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Solarizer colors plugin [[ Paused in favor of dracula theme ]]
"syntax enable
"set background=dark
"colorscheme solarized

" Dracula colourscheme plugin
syntax enable
colorscheme dracula


" ---------------------- Pathogen Plugins - END

" remove the menubar, toolbar and scrollbars for gvim in windows
:set guioptions -=m 
:set guioptions -=T
:set guioptions -=r
:set guioptions -=L


" undo levels maximum number of changes that can be undone
set ul=1000

" ctrl backspace to delete previous word
imap <C-BS> <C-W>

" Backspace to delete empty line
set backspace=indent,eol,start

" Set font
set guifont=Droid_Sans_Mono:h14:cANSI:qDRAFT

" Set line number
set nu

" set colour Scheme
"colo pablo
"syntax on

set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" PEP 8 indentation Python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

" UTF-8 support
set encoding=utf-8

" Make your code look pretty!!!
let python_highlight_all=1
syntax on


" map Ctrl+space to move cursor right by one
inoremap <C-Space> <Right>

" Run python code from inside vim with F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Add some extra python flare
set expandtab
set showmatch
set ts=4


" Those stupid lines that go over 80 chars! 
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
