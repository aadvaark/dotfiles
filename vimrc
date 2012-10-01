set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ai
set number

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

function HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

function HtmlUnEscape()
  silent s/&lt;/</eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

map <silent> <c-h> :call HtmlEscape()<CR>
map <silent> <c-u> :call HtmlUnEscape()<CR>

colorscheme desert

filetype plugin indent on
syntax enable
