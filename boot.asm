; 10h中断用来显示字符
mov ax, cs
mov es, ax
mov ax, txt
mov bp, ax                    ; ES:BP表示显示字符串的地址
mov cx, txtLen                ; CX存字符长度
mov ax, 1301h                 ; AH=13h表示向TTY显示字符，AL=01h表示显示方式（字符串是否包含显示属性，01h表示不包含）
mov bx, 000fh                 ; BH=00h表示页号，BL=0fh表示颜色
mov dl, 0                     ; 列
int 10h
 
txt: db "welcome to Use GuppyOS!"
txtLen: equ $ - txt           ; 字符串长度