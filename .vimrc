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
" Command autocompletion
Plug 'gelguy/wilder.nvim'

" GoLang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Startscreen
Plug 'mhinz/vim-startify'

" Deps
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'coreyja/fzf.devicon.vim'

" Comment plugin (use gc)
Plug 'tpope/vim-commentary'

" GruvBox
Plug 'gruvbox-community/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Line
Plug 'itchyny/lightline.vim'

" Ru$t support
Plug 'rust-lang/rust.vim'

" Nerdfont icons
Plug 'ryanoasis/vim-devicons'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Coc (autocompletion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"  __          __  _____   _        _____    ______   _____  
"  \ \        / / |_   _| | |      |  __ \  |  ____| |  __ \ 
"   \ \  /\  / /    | |   | |      | |  | | | |__    | |__) |
"    \ \/  \/ /     | |   | |      | |  | | |  __|   |  _  / 
"     \  /\  /     _| |_  | |____  | |__| | | |____  | | \ \ 
"      \/  \/     |_____| |______| |_____/  |______| |_|  \_\
"
" the command autocompletion 
"
     
" Start
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'enable_cmdline_enter': 0,
      \ })

call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
      \ 'border': 'rounded',
      \ 'max_height': '75%',
      \ 'min_height': 0,
      \ 'prompt_position': 'top',
      \ 'reverse': 0,
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],
      \ })))

"   _____   ______   _______   _______   _____   _   _    _____    _____ 
"  / ____| |  ____| |__   __| |__   __| |_   _| | \ | |  / ____|  / ____|
" | (___   | |__       | |       | |      | |   |  \| | | |  __  | (___  
"  \___ \  |  __|      | |       | |      | |   | . ` | | | |_ |  \___ \ 
"  ____) | | |____     | |       | |     _| |_  | |\  | | |__| |  ____) |
" |_____/  |______|    |_|       |_|    |_____| |_| \_|  \_____| |_____/ 
"

" Disable text wrapping
set nowrap

" Tags
set tags=/usr/include/tags,tags

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
set term=kitty
" comment above and uncomment for xterm
"set term=xterm

" vim only features
set nocompatible

" set spacing
set nuw=5
autocmd VimEnter :%left 5

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

map <S-F5> :redraw!<cr>
nnoremap <S-c> :echo "ENTERING SYSTEM CLIPBOARD" <cr>"*
nnoremap <S-q> :echo "ENTERING C-c SYSTEM CLIPBOARD" <cr>"+
map <C-k> :Tags<cr>
nnoremap <C-f> :Files<cr>
nnoremap <C-b> :Buffers<cr>
map <F8> :set nu!<cr>
map <S-F8> :set rnu!<cr>
map <F2> :w<cr>
map <F9> :!pmake<cr>
map <F4> :!prun<cr>
map <F5> :!pdebug<cr>
map <F6> :cn<cr>
map <F7> :cp<cr>
map <F10> :source ~/.vimrc<cr>
"map <C-l> :new .<cr>
"map L :e .<cr>
"map <S-Right> <C-w>v
"map <S-Up> <C-w>s
map <C-x> :set nohlsearch<cr>
map <C-a> :set hlsearch<cr>
map <C-s> /<tab>
map <S-C-Left> :vnew<cr>
map <S-C-Right> :new<cr>

"   _    _   _____    _____   _    _   _        _____    _____   _    _   _______ 
"  | |  | | |_   _|  / ____| | |  | | | |      |_   _|  / ____| | |  | | |__   __|
"  | |__| |   | |   | |  __  | |__| | | |        | |   | |  __  | |__| |    | |   
"  |  __  |   | |   | | |_ | |  __  | | |        | |   | | |_ | |  __  |    | |   
"  | |  | |  _| |_  | |__| | | |  | | | |____   _| |_  | |__| | | |  | |    | |   
"  |_|  |_| |_____|  \_____| |_|  |_| |______| |_____|  \_____| |_|  |_|    |_|   
"

set bg=dark
colorscheme gruvbox
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


" startify settings
let s:header_cmd = 'echo'

let g:startify_custom_header =
    \ startify#center(split(system(s:header_cmd), '\n'))

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
