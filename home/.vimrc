set nocompatible
set hidden
set tabstop=8
set softtabstop=4
syntax on
colorscheme bespin 

" map jj to esc    
ino jj <esc>
cno jj <c-c>

map <F2> :NERDTreeToggle<CR>

map <Leader>t :FuzzyFinderTextMate<Enter>

" Bubble single lines
" nmap <C-Up> ddkP
" nmap <C-Down> ddp
" Bubble multiple lines
" vmap <C-Up> xkP`[V`]
" vmap <C-Down> xp`[V`]

set directory^=$HOME/.vim_swap// " put all swap files together in one place

" For visual mode, just use "v" to toggle it on/off
vno v <esc>    

"folding settings
set nofoldenable
set foldmethod=syntax
set foldlevel=1
set foldnestmax=2
set foldtext=strpart(getline(v:foldstart),0,50).'\ ...\ '.substitute(getline(v:foldend),'^[\ #]*','','g').'\ '
highlight Folded  guibg=#0A0A0A guifg=#9090D0

"misc cosmetic
set number
set tabstop=2 

" Hit D to duplicate the highlighted text below while in visual mode
vmap D y'>p
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_rvm')?rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P
" set statusline+=%{rvm#statusline()}
