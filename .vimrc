"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" examples:
"   * https://github.com/derekwyatt/vim-config/blob/master/vimrc
"   * http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" global settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" these are for pathogen, but i will try to use vim8 built in later
filetype plugin on
filetype indent on

"set backspace to work over line breaks, etc
set backspace=indent,eol,start

" add the unnamed register to the clipboard
" fix for tmux: https://stackoverflow.com/a/11421329
if $TMUX == ''
    set clipboard+=unnamed
endif

" apply substitutions globally on lines (when was the last time you wanted to
" only replace the first occurrence of a word on a line) 
set gdefault

" make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the 'must save first' error doesn't come up)
set hidden

" don't update the display while executing macros
set lazyredraw

" prevent some security exploits having to do with modelines in files
set modelines=0

" don't care about old vi compatibility
set nocompatible

" Show column/row numbers at bottom
set ruler

"show the mode you are in at the bottom of the screen
set showmode

" save undo information to undo previous actions even after you close and 
" reopen a file
set undofile

" Enable enhanced command-line completion. See :help 'wildmenu'
set wildmenu

" switch on syntax highlighting
syntax on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" line / line number settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" wrap lines at 80 characters and by word (not character)
set wrap
set linebreak
"set textwidth=79

" display how far away each line is from the current one
set number
set relativenumber


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" search settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" case insensitive search, search highlighting, match while typing
set ic
set hlsearch
set incsearch

" clear search with leader + space
nnoremap <leader><space> :noh<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" not using expandtab - want to insert tabs and not spaces
set shiftwidth=4
set softtabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" custom commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

" mnemonic for the key sequence is 'e'dit 'v'imrc, 's'ource 'v'imrc
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" save on losing focus
" au FocusLost * :wa


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap tab key to escape
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable arrow keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" make j and k work the way you expect instead of working in some archaic 
" 'movement by file line instead of screen line' fashion
nnoremap j gj
nnoremap k gk


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"execute pathogen#infect() 

let g:vimwiki_list = [{'path': '~/my_site/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_folding = 'expr'
let g:vimwiki_table_mappings = 0

nmap <Leader>wn <Plug>VimwikiNextLink

"------------------------------
" SORT
"------------------------------
"set lines=40 columns=125
"set guifont=Consolas:h10
"let g:solarized_termtrans = 1
"colorscheme ir_black
set background=dark
"colorscheme solarized

"let g:instant_markdown_autostart = 0    " disable autostart
"map <leader>md :InstantMarkdownPreview<CR>

