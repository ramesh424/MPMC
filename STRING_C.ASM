assume cs:code,ds:data;
data segment;
str1 db "vnrvjiet$";
res1 db "character is found$";
res2 db "character not found$";
data ends;

code segment;

start: mov ax,data;
       mov ds,ax;
       mov si, offset str1;
       mov cx,08;
       mov al,'j';
 back: cmp al, [si];
       je last1;
       mov dx,offset res1;
       mov ah,09h;
       int 21h;
       jmp last2;
 last1: mov dx, offset res2;
       mov ah,09h;
       int 21h;
last2: int 3h;
code ends ;
end start;
