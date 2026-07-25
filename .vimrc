" Apple's /usr/bin/vim defaults regexpengine to 1 (old backtracking engine),
" which hangs on TypeScript syntax. 0 = automatic, vim's real default.
" Must come before `syntax on`, or patterns compile against the old engine.
set regexpengine=0

" enable fuzzy search
set rtp+=/opt/homebrew/opt/fzf

" Enable line numbers
set number

" Enable syntax highlighting
syntax on