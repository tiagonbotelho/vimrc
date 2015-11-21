"  _______ _                     ____        _       _ _           
" |__   __(_)                   |  _ \      | |     | | |          
"    | |   _  __ _  __ _  ___   | |_) | ___ | |_ ___| | |__   ___  
"    | |  | |/ _` |/ _` |/ _ \  |  _ < / _ \| __/ _ \ | '_ \ / _ \ 
"    | |  | | (_| | (_| | (_) | | |_) | (_) | ||  __/ | | | | (_) |
"    |_|  |_|\__,_|\__, |\___/  |____/ \___/ \__\___|_|_| |_|\___/ 
"                   __/ |                                          
"                  |___/                                           
"

"==Vundle Stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"=======Airline
Plugin 'bling/vim-airline'

"======Polyglot
Plugin 'sheerun/vim-polyglot'

"========Expand
Plugin 'terryma/vim-expand-region'

"=====UltiSnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"===EndComplete
Plugin 'tpope/vim-endwise'

"===IndentLines
Plugin 'Yggdroot/indentLine'

"=====Nerd Tree
Plugin 'scrooloose/nerdtree'

"=====Commenter
Plugin 'scrooloose/nerdcommenter'

"========Themes
Plugin 'chriskempson/tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-scripts/wombat256.vim'
Plugin 'vim-scripts/Wombat'

"========GoLang
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

"===ImprovedCPP
Plugin 'octol/vim-cpp-enhanced-highlight'

"====Git Gutter
Plugin 'airblade/vim-gitgutter'

"====Tabularize
Plugin 'godlygeek/tabular'

"=====Super-Tab
Plugin 'ervandew/supertab'

"=========CtrlP
Plugin 'kien/ctrlp.vim'

"==Surround.vim
Plugin 'tpope/vim-surround'

"=====Auto-Pair
Plugin 'jiangmiao/auto-pairs'

"=========Rails
Plugin 'tpope/vim-rails'

"=========Scala
Plugin 'derekwyatt/vim-scala'

"====JavaScript
Plugin 'Shutnik/jshint2.vim'

"==========Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

call vundle#end()
filetype plugin indent on
filetype plugin on

"=End of Vundle

"Mappings
let mapleader="\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>r :%s/
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>p "+p
nmap <Leader>P "+P
nmap <Leader>z ZZ

nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]`

map q: :q

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

nnoremap <CR> G
nnoremap <BS> gg

no     <up>      ddkP 
no     <down>    ddp
map    <left>    <nop>
map    <right>   <nop>
map Q <nop>
imap   <left>    <nop>
imap   <right>   <nop>
imap   <up>      <nop>
imap   <down>    <nop>

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
                \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
                \ }
endif

"General
set autoread
set incsearch      "Move cursor to search result as you type
set autoindent     "Autoindentation
set smartindent
set shiftwidth=2
set softtabstop=2
set expandtab
set ignorecase     "Search is not case sensitive
set scrolloff=20   "Always keep a space of 20 lines from bottom
set wildmenu       "Wildmenu on
set wildmode=longest,full
set backspace=eol,start,indent 

if exists("&wildignorecase")
  set wildignorecase
endif

"Splits
set splitbelow
set splitright

"Cosmetic
syntax on
"set t_Co=256
colorscheme wombat
set guifont=Inconsolata:h17
set number         "Line Numbers
set ts=2           "Smaller tab size
set tabstop=2
set cmdheight=2    "Height of the cmd line
set lbr            "Linebreak on 500 chars
set tw=500
set cursorline     "Cursor line highlighted
set hlsearch       "Highlight search result
set showcmd        "Command in bottom bar
set linespace=0    "No spacing between lines
set showmatch      "Show matching parenthesis and brackets
set term=screen-256color
set t_Co=256

"MacVim
if has("gui_running")
  set transparency=2
  set guioptions=T
  set guioptions=m
endif
set guifont=Inconsolata\ for\ Powerline:h17
highlight Cursor guifg=white guibg=white
highlight iCursor guifg=white guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


"Gitgutter
let g:gitgutter_enabled = 1

"For UltiSnips
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Line Identation
let g:indentLine_color_term = 239
let g:indentLine_char = '|'


"Airline
set laststatus=2
let g:airline_theme="tomorrow"
let g:airline_powerline_fonts=1

"NerdTree HighLight
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

let g:gist_use_password_in_gitconfig = 1

"SuperTab
let g:SuperTabDefaultCompletionType = "context"
