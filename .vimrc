
"https://github.com/derekwyatt/vim-config/blob/master/vimrc
"
set nocompatible
filetype plugin on
filetype indent on
syntax on

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Don't update the display while executing macros
set lazyredraw

" Enable enhanced command-line completion. See :help 'wildmenu'
set wildmenu

" mnemonic for the key sequence is 'e'dit 'v'imrc, 's'ource 'v'imrc
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>

" Show line numbers
set nu

" case insensitive search, highlight, match while typing
set ic
set hlsearch
set incsearch

" Show column/row numbers at bottom
set ruler

" Add the unnamed register to the clipboard
if $TMUX == ''
    set clipboard+=unnamed
endif

" wrap at word
set lbr

"set backspace to work over line breaks, etc
set backspace=indent,eol,start

"show the mode you are in at the bottom of the screen
set showmode

"------------------------------
" My additions
"------------------------------
"set lines=40 columns=125
"set guifont=Consolas
"set backupdir=C:\Users\pbrar\Documents\_paul\temp\vim_backups
"let g:solarized_termtrans = 1
"colorscheme ir_black
"set background=dark
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"call pathogen#helptags()
"call pathogen#incubate()
"from steve losh
"http://stevelosh.com/blog/2010/09/coming-home-to-vim/
 
set shiftwidth=4
set softtabstop=4

execute pathogen#infect() 

let g:vimwiki_list = [{'path': '~/my_site/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_folding = 'expr'

let g:instant_markdown_autostart = 0    " disable autostart
map <leader>md :InstantMarkdownPreview<CR>
