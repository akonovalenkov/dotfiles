
set encoding=utf8

set nocompatible              " be iMproved, required
filetype off                  " required

"set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'rakr/vim-one'
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'
"Plugin 'morhetz/gruvbox'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'pangloss/vim-javascript'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
" Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhinz/vim-startify'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'scrooloose/syntastic'
Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'jeaye/color_coded'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/goyo.vim'

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


" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
	source ~/.vimrc.before
endif

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set whichwrap+=<,>,h,l
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
	source ~/.vim/vundles.vim
endif

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
	silent !mkdir ~/.vim/backups > /dev/null 2>&1
	set undodir=~/.vim/backups
	set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"map <Leader>g :CtrlPMixed<CR>
"map <Leader>g :Files<CR>
map <Leader>g :execute 'Locate' getcwd()<CR>
map <Leader>t :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>

"map <tab> :b#<CR>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Custom Settings ========================
" so ~/.yadr/vim/settings.vim



" set showtabline=2
set exrc
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
let g:NERDTreeIgnore=['\~$', 'node_modules', '^build$']
set relativenumber

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

" autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif


let g:airline#extensions#tabline#enabled = 1

set laststatus=2

"set timeoutlen=1000 ttimeoutlen=0

let g:AutoPairsCenterLine=0



"let g:solarized_termcolors=256
"colorscheme solarized

let g:airline_powerline_fonts = 1

let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'top,order:ttb,min:5,max:10,results:10'
let g:ctrlp_working_path_mode = ''

"let g:ycm_confirm_extra_conf = 0

set diffopt+=vertical

set updatetime=250

let g:gitgutter_sign_column_always = 1



set tabstop=2
set shiftwidth=2
set ai
set cin
" set showmatch
set nolist

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


nnoremap <CR> :noh<CR><CR>



let loaded_matchparen = 1

" solid underscore
let &t_SI = "\e[6 q"
" solid block
let &t_EI="\e[ q"
" 1 or 0 -> blinking block
" 3 -> blinking underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar"

"au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


" set clipboard=unnamedplus

map s <Plug>(easymotion-overwin-w)
map <Leader>s <Plug>(easymotion-s2)

""


"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"
"
" " Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	" return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	return pumvisible() ? "\<C-y>" : "\<CR>"
 endfunction
 " <TAB>: completion.
 "inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
 "
 "
 "inoremap <expr><TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
 " " <C-h>, <BS>: close popup and delete backword char.
 "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

 " AutoComplPop like behavior.
 "
 "" Shell like behavior(not recommended).
 "set completeopt+=longest
 ""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

 " Enable omni completion.
 "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
 "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
 "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
 "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
 "

inoremap ; <esc>A;<esc>

set clipboard=unnamedplus
autocmd VimLeave * call system("xclip -selection c", getreg('+'))

"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd FileType * nested :call tagbar#autoopen(0)

let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

"set completeopt-=preview
"
"
"syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec='/home/artem/Code/client-zelda-js/node_modules/eslint/bin/eslint.js'

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'
let g:PaperColor_Dark_Override = { 'background' : '#ffffff' }
highlight Normal ctermbg=15

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'



"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

command W w !sudo tee % > /dev/null
set lazyredraw
set magic
set foldcolumn=1
set ffs=unix,dos,mac
set lbr
set tw=500
set wrap
map <leader>cd :cd %:p:h<cr>:pwd<cr>
map 0 ^
map <leader>pp :setlocal paste!<cr>
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>
