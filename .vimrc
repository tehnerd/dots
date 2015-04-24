execute pathogen#infect()
syntax enable
let mapleader=" "
map <Leader>n :NERDTreeToggle<CR>
map <Leader>tb :TagbarToggle<CR>


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


au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
let g:go_fmt_command = "goimports"

set tabstop=4
set shiftwidth=4
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
