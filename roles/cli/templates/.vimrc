" Plug plugin manager for Vim
" Silent is set to avoid a warning on machines without git
silent! call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'mipmip/vim-fluid'
Plug 'morhetz/gruvbox'
Plug 'elmar-hinz/vim.typoscript'
Plug 'posva/vim-vue'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug '~/.vim/plugged/mysnippets'
call plug#end()

set number " Display line number
syntax on " Syntax coloration
" Tabulation
set tabstop=4
set shiftwidth=4
set expandtab

" Colorscheme settings
set background=dark
if filereadable( expand("$HOME/.vim/plugged/gruvbox/colors/gruvbox.vim") )
    colorscheme gruvbox
endif

set ic " Insensitive case search (Warn : also active using the search & replace functionality)
set incsearch " Tell vim to search while typing

set laststatus=2 " Keep status always on 
set encoding=utf-8 " Open all files as utf-8
set termguicolors " Tell vim to use as much colors as the terminal emulator support

" Setting syntax highlighting for specials files extensions
autocmd BufNewFile,BufRead *.ts   set syntax=typoscript
autocmd BufNewFile,BufRead *.less   set syntax=less
autocmd BufNewFile,BufRead *.html   set syntax=fluid " To use my snippets for the Fluid templating engine 

set clipboard=unnamedplus " Tried to set vim default buffer to the system clipboard but it doesn't work

" Default splits opening below and right
set splitbelow
set splitright

"
" Keyboard shortcuts
"
nnoremap <F5> :UndotreeToggle <CR> " Shortcut to call the undo tree
map <F9> :set ft=fluid <CR>
nnoremap <F12> :noh <CR> " Shortcut to hide previous search highlighting
vnoremap // y/<C-R>"<CR> " Remap // in visual mode to search text under the cursor
" Remap :w< command to :w (common mistake on azerty keyboard)
" command w< w

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"
" Storage
"
" Making sure to have the directory to store changes of a file between each file editions
silent !mkdir -p ~/.vim_undodir 
" Making sure to have the directory to store Vim .swp temporary files
silent !mkdir -p ~/.vim_backup 

" Storing in a directory all changes to use them even if the file is closed
if has("persistent_undo")
    set undodir=~/.vim_undodir/
    set undofile
endif
" Storing the backup files in the home directory
set backupdir=~/.vim_backup
