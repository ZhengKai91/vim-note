# VIM NOTE
## Normal mode
when you are in normal mode, what you want to do is to aim and (add, delete, change, yank, paste) fast.(aim and fire)
### move to aim
1. how to move. **h, j ,k, l** move cursor left, down, up, right.
2. move faster. **w, b** move a word forward and backward. **e** to the end of a word. **W** a sequence of non-blank chars. go!home is 3 words and one WORD.
3. move to certain char in line. **f+char**. **;** and **,** to move to next/prev char in line.
4. move to line start and end. **0**, **$**. move to not indent **^**.
5. move to file start and file end. **gg**, **G**.
5. move to certain line. **:line_number**. show line number: **set number**. 
6. move page. **ctrl+f, ctrl+b** move one page forward forward and backward. **ctrl+d, ctrl+u** move half page down and up. **ctrl+e, ctrl+y** move screen down or up a line, rolling screen.
7. move to last change, **ctrl+o**, **gi**. gi is go to last change and change to insert mode. Very useful when you want to go to somewhere and copy sth , then paste/replace to last place you leave.  
8. move to certrain word. **/word** to find pattern 'word' in file. add **set hlsearch** in vimrc to hight light the word found in flie. **n** and **N** to move forward and backward. If wanna find exact word, use **/\\<word\\>**.
9. move to certain word without type. **\*** on word to find word in file directly. Or, **yiw** copy word to register 0, then **/ctrl+r 0** to refer to register 0. 
### fire
1. add. **a** append after cursor. **i** insert before cursor. **ea** is usually used to add sth after a word. 
2. delete. **x**, **dw**, **diw**, **daw**, **dt{char}**. **x** delete a char, **dw**=**daw** delete a word, sGpace around word is include. **diw** delete inside word. **dt{char}** delete until {char} in this line.
3. **dd**, **d3d** delete one line. delete 3 lines.
4. change. **cw**, **caw**, **ciw**, **ct{char}**. change one char can use **r**. 
5. yank. **yy**, **y3y**, **yG**. copy one line, copy 3 lines, copy to end of file. 
6. yank word. **yw**, **yiw**, **yaw**, **yt{}**. all objects copied by y is stored in **register 0**. 
7. paste. ["x]p. past/w the text [from register] after the cursor. ["x]P is before cursor. x is unamed register by default. We have unamed register, 0 register for copy, a_z register, + register for clipboard.
### if shit happend
1. if you delete sth by mistake, **u** to undo. If you undo too many, **ctrl+r** to redo.

## Insert mode
while you are in insert mode, just type. 
But, sometimes, you tpye sth wrong, and you don't wanna use backspace..
1. **ctrl+h** delete a char.
2. **ctrl+w** delete a word.
3. **ctrl+u** delete a line.

## Visual mode
visual mode is offer great way to select text.
1. **v** visual mode of char. when v is pressed, use j,h,k, l to selete text char by char. if mistake happens, press **o** to change begin and end of cursor.
2. **viw**, **vaw**, selet word fast.
3. **V** select line. j, h,k, l to select fast.
4. **ctrl+v** select block.   

## Ex shell mode
type **:** to enter ex shell mode.
1. some common command:**[range]delete [x]**, **[range]yank [x]**, **[line]put[x]**. delete range lines to register x, cpy range lines to register x, put object in x to line. **[range]copy {address}** copy range lines to address, **[range]move {address}** move range lines to address. 
2. **e** to edit file, **w** to save, **q** to quit
3. **ls** ls opened buffers . **b[uffer] + num** go to numth buffer. **bn** next buffer, **bp** previous buffer.  
4. split [filename], open filename in a hsplit window. vsplit [filename], open filename in a vertical window.if filename is none, open the same file in current window. **close** to close current window, **only** to close other window. **ctrl+w, {j,h,k,l}**move window. 
4. **tabnew** open files in a new tab. **tabc** close tab. **tabonly** close other tabs.
5. **shell** go to outside and run shell command. **exit** to goback.
6. **!shellcomand**. run shell command without leave vim . for exampel `:!ctags -R`.   

## Scripts
+ **vundle**. 
fist install vundle to manage your scripts. All you need to do is `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`. Then set your vimrc.
```
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'scrooloose/nerdtree'
    call vundle#end()
``` 
+ **nerdtree**. 
add Plugin 'scrooloose/nerdtree' in `call vundle`. 
**o** open file in current window and jump.
**go** open file in current window, not jump.
**i** open file in split window, jump.
**gi** open file in split window, not jump.
**s** open file in vsplit window, jump
**go** openfile in vsplit window, not jump
**x** close parent node
**X** close all children node
**p** go to parent
**?** help

+ **code folding** 
not need plugin, just `set fdm=marker` in vimrc.
first set marker, then **za** to open and close folds, or **zo** to open, and **zc** to close.
How to set marker? e.g. **zf56G** create a marker from current line to lin 56. **10zf** or **10zf+** create a marker from current line to next 10 lines. **10zf-** create a marker from current line to previous 10 lines.
**zf%** create marker for (), [], {}, <>.
**zd** delete current folds. **zE** eliminate all folds in current window.
