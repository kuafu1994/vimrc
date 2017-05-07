winpos 5 5
set ruler
set laststatus=1
set foldenable
set nu
hi  Comment  ctermfg=6
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab
set noexpandtab 
set nu 
set cindent 
set hls
syntax on
set wildmenu 
set wildmode=full
set history=200
set nocompatible
filetype plugin on
runtime macros/matchit.vim

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

