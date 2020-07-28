" setting : view
set number
set cursorline
set laststatus=2
set cmdheight=1
set showmatch
set nowrap

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
set clipboard& clipboard^=unnamedplus
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

" setting : mouse
" set mouse=a

" setting : window mode
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" setting : buffer
let macvim_skip_cmd_opt_movement = 1
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprev<CR>
nnoremap <S-d> :bdelete<CR>

" setting : complete
inoremap <A-p> <C-p>
inoremap <A-n> <C-n>

" setting : spell check
set spell spelllang=en

" setting : terminal
tnoremap <Esc> <C-\><C-n>

" setting : undo
set undofile
set undodir=~/.config/nvim/undo
set undolevels=1000
set undoreload=10000

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
    call dein#add('morhetz/gruvbox')
    call dein#add('arcticicestudio/nord-vim')
    call dein#add('tomasiser/vim-code-dark')
    call dein#add('cocopon/iceberg.vim')
    call dein#add('flrnprz/plastic.vim')
    call dein#add('tpope/vim-surround')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('tpope/vim-fugitive')
    call dein#add('scrooloose/nerdtree')
    call dein#add('tpope/vim-commentary')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('rking/ag.vim')
    call dein#add('thaerkh/vim-workspace')
    call dein#add('tpope/vim-repeat')
    call dein#add('tpope/vim-commentary')
    call dein#add('Shougo/neco-syntax')
    call dein#add('kamykn/dark-theme.vim')
    call dein#add('vimlab/split-term.vim')
    call dein#add('digitaltoad/vim-pug')
    call dein#add('scrooloose/syntastic')
    call dein#add('vim-scripts/grep.vim')
    " call dein#add('rhysd/accelerated-jk')
    call dein#add('nathanaelkane/vim-indent-guides')
    call dein#add('simeji/winresizer')
    call dein#add('alvan/vim-closetag')
    call dein#add('prabirshrestha/async.vim')
    call dein#add('prabirshrestha/asyncomplete.vim')
    call dein#add('prabirshrestha/asyncomplete-lsp.vim')
    call dein#add('prabirshrestha/vim-lsp')

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
syntax on
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd ColorScheme * highlight Cursorline ctermbg=none
autocmd ColorScheme * highlight EndOfBuffer ctermbg=none
set background=dark
colorscheme darktheme
highlight LineNr ctermfg=239
let g:airline_theme='deus'

" setting : vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=8
let g:indent_guides_guide_size = 1

" plugin setting : airline
let g:airline#extensions#tabline#enabled = 1

" plugin setting : NERDTree
map <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

" puligin setting : vim-devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" pulugin setting : ctrlp
let g:ctrlp_map='<C-p>'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'

" pulugin setting : ag.vim
if executable('ag')
  let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
endif

" pulugin setting : vim-workspace
let g:workspace_create_new_tabs = 1
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'
cnoremap tcw :ToggleWorkspace<CR>

" pulugin setting : syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ["flake8"]

" pulugin setting : accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" plugin setting : winresizer
map <C-S-e> :WinResizerStartResize<CR>

" plugin setting : vim-closetag
let g:closetag_filenames = '*.html,*.vue'
