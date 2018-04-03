execute pathogen#infect()
syntax enable
let mapleader="\\"
map <Leader>w :NERDTreeToggle<CR>
map <Leader>q :TagbarToggle<CR>
map <Leader>e :NERDTreeFocus<CR>
map <Leader>r :set invpaste<CR>


function! StartUp()                                                                                                                                                                                         
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

let g:tagbar_width = 30


let g:NERDTreeWinPos = "left"
let g:UltiSnipsExpandTrigger="<c-\\>"
let g:UltiSnipsJumpForwardTrigger="<c-\\>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" for tab completion
set wildmode=longest,list,full
set wildmenu

"timeouts:
set timeoutlen=300

au FileType go nmap <Leader>w <Plug>(go-info)
au FileType go nmap <Leader>e  <Plug>(go-doc)
let g:go_fmt_command = "goimports"

set tabstop=4
set shiftwidth=4
" backspace for mac to work
set backspace=2 
set expandtab
filetype on
filetype plugin on
set nocp
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#CompleteCpp sw=2 sts=2 et
autocmd FileType cpp set omnifunc=ccomplete#CompleteCpp sw=2 sts=2 et
