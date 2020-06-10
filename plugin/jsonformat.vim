" File: vim-plugins-jiftle.vim
" Author: yourname
" Description: 插件集合
" Last Modified: 六月 10, 2020
"
# JSON格式格式化
command! JsonFormat :execute '%!python -m json.tool'
\ | :execute '%!python -c "import re,sys;sys.stdout.write(re.sub(r\"\\\u[0-9a-f]{4}\", lambda m:m.group().decode(\"unicode_escape\").encode(\"utf-8\"), sys.stdin.read()))"'


