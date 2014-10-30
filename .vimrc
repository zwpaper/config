set nu
colo darkblue
set cursorline
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set enc=utf-8

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4


set tags=tags;
set autochdir

"cscope -Rbkq
if has("cscope")
            set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
            " check cscope for definition of a symbol before checking ctags:
            " set to 1 if you want the reverse search order.
             set csto=1

             " add any cscope database in current directory
             if filereadable("cscope.out")
                 cs add cscope.out
             " else add the database pointed to by environment variable
             elseif $CSCOPE_DB !=""
                 cs add $CSCOPE_DB
             endif

             " show msg when any other cscope db added
             set cscopeverbose

             nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
             nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
             nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
         endif

"      ：cs find s ---- 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
"　　：cs find g ---- 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
"　　：cs find d ---- 查找本函数调用的函数：cs find c ---- 查找调用本函数的函数
"　　：cs find t: ---- 查找指定的字符串
"　　：cs find e ---- 查找egrep模式，相当于egrep功能，但查找速度快多了
"　　：cs find f ---- 查找并打开文件，类似vim的find功能
"　　：cs find i ---- 查找包含本文件的文


" 按F8按钮，在窗口的左侧出现taglist的窗口,像vc的左侧的workpace
nnoremap <silent> <F8> :TlistToggle<CR><CR>
" :Tlist              调用TagList
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠
