syntax on
filetype plugin indent on

"keep history for hidden buffers
set hidden

set path+=**

set paste

autocmd FileType markdown setlocal makeprg=markdownlint
autocmd BufWritePost *.md :! markdownlint %

set autoread

"comment
"autocmd BufWritePost *.py :! black -l 79 % 
autocmd BufWritePost *.py :! flake8 %
autocmd BufWritePost *.py :! pylint --disable=invalid-name %

autocmd BufWritePost *.js :! js-beautify -r % 
autocmd BufWritePost *.html,*.vue :! prettyhtml % 
