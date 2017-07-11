" get the straightforward package loader
execute  pathogen#infect()

"since ConqueGDB has some issues with cshell
set shell=/bin/sh

" default color scheme 
colorscheme torte 

" correct NERDTree issue with strange characters not being correctly displayed and imparing usability
let g:NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'

let g:airline#extensions#tabline#enabled = 1

"get CtrlP to show the open buffer list
nmap <C-c> :CtrlPBuffer <CR>

nmap <C-f> :NERDTreeFind <CR>

" turn on syntax highlight
syntax on

" turn on line numbering
set nu

" prevent vim from wraping text to the next line
set nowrap

set mousemodel=popup

" enable the mouse support on terminal mode
set mouse=a

:set t_ut=

hi Colorcolumn ctermbg=cyan  
"set colorcolumn=80

"set tab as 4 spaces"
set tabstop=4
set expandtab

"highlight all search pattern matches
set hlsearch

"cscope key bindins"
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"use quickfix as outoput for cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

"use cscope by default when using tags shortcuts"
set cst

"create default commands to grep asynchronously for strings in C or Python files
command! -nargs=1 CppGrep AsyncRun grep -n -R --include \*.hh --include \*.h --include \*.cc --include \*.c --include \*.cpp --include \*.hpp <args> 
command! -nargs=1 PyGrep AsyncRun grep -n -R --include \*.py --include \*.pyc <args> 

command! -nargs=1 Gem5Build AsyncRun scons build/ARM/gem5.<args> -j4 EXTRAS=../gem5-obj 

set wildignore+=/arm/projectscratch/pd/pj00617/users/josmar02/gem5/build
set wildignore+=/arm/projectscratch/pd/pj00617/users/josmar02/build

"check if this is a vimdiff, if so enable setlist to be able to see tabs and line ends"
if &diff
   set list
   set noro
endif
