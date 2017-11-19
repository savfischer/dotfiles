let mapleader = "\<Space>"
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

imap <C-s> <esc>:w<cr>

set backspace=2   " Backspace deletes like most programs in insert mode
set ruler         " show the cursor position all the time
set laststatus=2  " Always display the status line
set clipboard=unamed " Use system clipboard

" Numbers
set number
set numberwidth=5

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Color scheme
colorscheme github
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Test shortcuts
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>T :TestNearest<CR>
nnoremap <silent> <Leader>l :TestLast<CR>
nnoremap <silent> <Leader>a :TestFile<CR>
nnoremap <silent> <Leader>gt :TestVisit<CR>
nnoremap <silent> <Leader>A :TestSuite<CR>
