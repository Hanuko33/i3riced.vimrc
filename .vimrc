"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   _   ____    _____    _                     _                  _                           
"  (_) |___ \  |  __ \  (_)                   | |                (_)                          
"   _    __) | | |__) |  _    ___    ___    __| |        __   __  _   _ __ ___    _ __    ___ 
"  | |  |__ <  |  _  /  | |  / __|  / _ \  / _` |        \ \ / / | | | '_ ` _ \  | '__|  / __|
"  | |  ___) | | | \ \  | | | (__  |  __/ | (_| |     _   \ V /  | | | | | | | | | |    | (__ 
"  |_| |____/  |_|  \_\ |_|  \___|  \___|  \__,_|    (_)   \_/   |_| |_| |_| |_| |_|     \___|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  _____    _        _    _    _____   _____   _   _    _____ 
" |  __ \  | |      | |  | |  / ____| |_   _| | \ | |  / ____|
" | |__) | | |      | |  | | | |  __    | |   |  \| | | (___  
" |  ___/  | |      | |  | | | | |_ |   | |   | . ` |  \___ \ 
" | |      | |____  | |__| | | |__| |  _| |_  | |\  |  ____) |
" |_|      |______|  \____/   \_____| |_____| |_| \_| |_____/ 
"                                                             

call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'jiangmiao/auto-pairs'

" Indent line
Plug 'Yggdroot/indentLine'

" GoLang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Startscreen
Plug 'mhinz/vim-startify'

" Colored parentheses
Plug 'luochen1990/rainbow'

" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'coreyja/fzf.devicon.vim'

" Comment plugin (use gc)
Plug 'tpope/vim-commentary'

" GruvBox theme
" Plug 'gruvbox-community/gruvbox'
" Plug 'shinchu/lightline-gruvbox.vim'

" Catpucinni theme
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Line
Plug 'itchyny/lightline.vim'

" Rust support
Plug 'rust-lang/rust.vim'

" Nerdfont icons
Plug 'ryanoasis/vim-devicons'

" Coc (autocompletion) trying to change to vim-lsp
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" LSP implementation for vim
Plug 'SirVer/ultisnips'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'prabirshrestha/async.vim'

Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/vim-lsp'

Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'

call plug#end()

" Autocompletion
let g:UltiSnipsJumpForwardTrigger="<tab>"


"   _____   ______   _______   _______   _____   _   _    _____    _____ 
"  / ____| |  ____| |__   __| |__   __| |_   _| | \ | |  / ____|  / ____|
" | (___   | |__       | |       | |      | |   |  \| | | |  __  | (___  
"  \___ \  |  __|      | |       | |      | |   | . ` | | | |_ |  \___ \ 
"  ____) | | |____     | |       | |     _| |_  | |\  | | |__| |  ____) |
" |_____/  |______|    |_|       |_|    |_____| |_| \_|  \_____| |_____/ 
"

" Colored parentheses
let g:rainbow_active = 1 

" always show current position
" set ruler
" Disable text wrapping
" set nowrap

" Cursorline
set cursorline
set cursorcolumn
" Tags
set tags=tags,/usr/include/tags

" Enable truecolor
set termguicolors

" Always show statusbar
set laststatus=2

" Mouse support
set mouse=a

" Encoding for nerdfont
set encoding=UTF-8

" Tabsize (tabstop for tab, shiftwidth for << or >>)
set tabstop=4
set shiftwidth=4

" Change tab to spaces
set expandtab

" set term to kitty (my main terminal) for proper scaling
set keyprotocol=xterm:mok2
set term=xterm
" comment above and uncomment for xterm
"set term=xterm

" vim only features
set nocompatible

" ignore case while searching
set ignorecase

" MACRO EXPLAINING:
" 1: q: Start macro recorder
" 2: a: choose register
" 3: do what you want to record
" 4: q: stop recording
"
" 1: @: start macro player
" 2: a: choose register
" OR
" @@: play last recorded macro

"  __  __              _____    _____    _____   _   _    _____ 
" |  \/  |     /\     |  __ \  |  __ \  |_   _| | \ | |  / ____|
" | \  / |    /  \    | |__) | | |__) |   | |   |  \| | | |  __ 
" | |\/| |   / /\ \   |  ___/  |  ___/    | |   | . ` | | | |_ |
" | |  | |  / ____ \  | |      | |       _| |_  | |\  | | |__| |
" |_|  |_| /_/    \_\ |_|      |_|      |_____| |_| \_|  \_____|
"

nmap <S-C-Up> Vd<Up><Up>p
nmap <S-C-Down> Vdp
map <S-F5> :redraw!<cr>
nnoremap <S-c> :echo "ENTERING SYSTEM CLIPBOARD" <cr>"*
nnoremap <S-q> :echo "ENTERING C-c SYSTEM CLIPBOARD" <cr>"+
map <C-k> :Tags<cr>
nnoremap <C-f> :Files<cr>
nnoremap <C-b> :Buffers<cr>
map <F8> :set nu!<cr>
map <S-F8> :set rnu!<cr>
map <F2> :w<cr>
map <F3> :!pmake<cr>
map <F4> :!prun<cr>
map <F5> :!pdebug<cr>
map <F6> :cn<cr>
map <F7> :cp<cr>
map <F10> :source ~/.vimrc<cr>
"map <C-l> :new .<cr>
"map L :e .<cr>
"map <S-Right> <C-w>v
"map <S-Up> <C-w>s
nmap <C-x> :set nohlsearch<cr>
nmap <C-a> :set hlsearch<cr>
nmap <C-s> /
" map <S-C-Left> :vnew<cr>
" map <S-C-Left> :vsplit<cr><C-w><right>
map <S-C-Left> :vsplit<cr>
" map <S-C-Right> :new<cr>
" map <S-C-Right> :split<cr><C-w><down>
map <S-C-Right> :split<cr>
inoremap <C-d> <esc>ma$a;<esc>`aa
inoremap <C-e> <esc>$a<cr>

" Brackets
" inoremap { {}<esc>i
" inoremap ' ''<esc>i
" inoremap " ""<esc>i
" inoremap [ []<esc>i
" inoremap ( ()<esc>i
" inoremap <C-,> <><esc>i
" map <C-L> %%x``x

"   _    _   _____    _____   _    _   _        _____    _____   _    _   _______ 
"  | |  | | |_   _|  / ____| | |  | | | |      |_   _|  / ____| | |  | | |__   __|
"  | |__| |   | |   | |  __  | |__| | | |        | |   | |  __  | |__| |    | |   
"  |  __  |   | |   | | |_ | |  __  | | |        | |   | | |_ | |  __  |    | |   
"  | |  | |  _| |_  | |__| | | |  | | | |____   _| |_  | |__| | | |  | |    | |   
"  |_|  |_| |_____|  \_____| |_|  |_| |______| |_____|  \_____| |_|  |_|    |_|   
"

" Cursor color
" hi Cursor guifg=#ffffff ctermfg=white
" Comment color
" hi Comment ctermfg=14 guifg=#80a0ff
" Normal text color
" hi Normal ctermfg=white ctermbg=darkblue guifg=#eeeeee guibg=#111122
" Search highlight color
" hi Search ctermbg=white ctermfg=black guifg=#000000 guibg=#ffffff
" Visual selection color
" hi Visual ctermbg=white ctermfg=black guifg=#000000 guibg=#ffffff
" Coc colors
" hi CocFadeOut ctermfg=gray guifg=#555555 ctermbg=black guibg=#000000
" hi CocHighlightText ctermfg=gray guifg=#555555 ctermbg=black guibg=#000000

" Indent settings
let g:indentLine_char = '|'
let g:indentLine_setColors = 1

" startify settings
let s:header_cmd = 'echo'

let g:startify_custom_header =
    \ startify#center(split(system(s:header_cmd), '\n'))

" Gruvbox
" set bg=dark
" colorscheme gruvbox
" let g:lightline = {}
" let g:lightline.colorscheme = 'gruvbox'

" Catpucinni

" colorscheme catppuccin
" colorscheme catppuccin_latte
" colorscheme catppuccin_frappe
" colorscheme catppuccin_macchiato
colorscheme catppuccin_mocha

" let g:lightline = {'colorscheme': 'catppuccin'}
" let g:lightline = {'colorscheme': 'catppuccin_latte'}
" let g:lightline = {'colorscheme': 'catppuccin_frappe'}
" let g:lightline = {'colorscheme': 'catppuccin_macchiato'}
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR.="\e[4 q" 
set ttimeout
set ttimeoutlen=1
set ttyfast
