" "让vim记忆上次编辑的位置
" autocmd BufReadPost *
" 			\ if line("'\"")>0&&line("'\"")<=line("$") |
" 			\	exe "normal g'\"" |
" 			\ endif
" "让vim记忆上次编辑的位置


" ----------------- 持久化Undo历史 ------------------
set undofile " Maintain undo history between sessions

" ----------------- UndoDir目录 ---------------
let UndoDir = "~/.vim/undodir"

" if filereadable(expand("~/.vim/undodir"))    " 判断文件是否存在"
if isdirectory(expand(UndoDir))    " 判断目录是否存在"
    echo '  |--> undodir目录已存在'
else
    echo '  |--> undodir目录不存在'
    execute "! mkdir ~/.vim/undodir"
endif

" 设置你的undo保存位置，你需要先 mkdir ~/.vim/undodir
let undodir = UndoDir
