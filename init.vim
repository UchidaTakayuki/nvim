" setting : view
set number
set cursorline
set laststatus=2
set cmdheight=1
set showmatch

" setting : file 
set noswapfile
set nobackup
set confirm
set hidden
set autoread
set modifiable
set write

" setting : character
set encoding=utf-8
set fileencoding=utf-8
set fenc=utf-8
set clipboard+=unnamedplus
set ambiwidth=double

" setting : search
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split
set hlsearch
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" setting : tab
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround
set autoindent

" setting : window mode
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" setting : buffer

" setting : terminal
tnoremap <Esc> <C-\><C-n>

" setting : undo
set noundofile

" pulgin setting : dein
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
    call dein#begin('$HOME/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here like this:
    call dein#add('jacoborus/tender.vim')
    call dein#add('cocopon/iceberg.vim')
    call dein#add('tomasr/molokai')
    call dein#add('morhetz/gruvbox')
    call dein#add('tpope/vim-surround')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('scrooloose/nerdtree')
    call dein#add('tpope/vim-commentary')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('Yggdroot/indentLine')
    call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('rking/ag.vim')
    call dein#add('thaerkh/vim-workspace')
    call dein#add('tpope/vim-repeat')
    call dein#add('tpope/vim-commentary')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('vimlab/split-term.vim')
    call dein#add('digitaltoad/vim-pug')
    call dein#add('dNitro/vim-pug-complete')
    call dein#add('scrooloose/syntastic')
    call dein#add('vim-scripts/grep.vim')

" Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

" setting : syntax
" Notice : please write after the dein
let g:molokai_original = 1
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
set background=dark
colorscheme gruvbox
highlight LineNr ctermfg=239

" plugin setting : airline
let g:airline#extensions#tabline#enabled = 1

" plugin setting : NERDTree
map <C-b> :NERDTreeToggle<CR>

" puligin setting : vim-devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" pulugin setting : vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" pulugin setting : ctrlp
let g:ctrlp_map='<C-p>'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" pulugin setting : ag.vim
if executable('ag')
  let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
endif

" pulugin setting : vim-workspace
let g:workspace_create_new_tabs = 1
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
cnoremap tcw :ToggleWorkspace<CR>

" pulugin setting : indentLine
let g:indentLine_char = '┆'

" pulugin setting : syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ["flake8"]
