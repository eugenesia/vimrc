" Use spaces instead of tabs.
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent

" Make backspace work like most other apps.
set backspace=eol,indent,start

" Turn on syntax highlighting.
syntax on

" Wrap at word.
set lbr

" Choose colorscheme.
colorscheme elflord

" Show line numbers.
set number

" Show line position.
set ruler

" Highlight long lines, see http://vim.wikia.com/wiki/Highlight_long_lines
if version >= 703
  " Show colored column at 80 chars.
  set colorcolumn=80
else
  " If can't show colorcolumn, highlight long lines instead.
  :match ErrorMsg '\%>80v.\+'
endif

" Initial window size. Remove to allow system to decide window size.
" set lines=30 columns=100

" VCL syntax highlighter https://github.com/pld-linux/vim-syntax-vcl
" Instead of putting plugin files into several folders, put it in one folder
" like in Pathogen, and run it on load.
au BufRead,BufNewFile *.vcl :set ft=vcl
au! Syntax vcl source ~/.vim/bundle/vim-syntax-vcl/vcl.vim
