data segment;
arr1 db 49h,64h,23h,12h,92h;
data ends;


code segment;
assume cs:code, ds:data;

start: mov ax,data;
       mov ds,ax;
       mov dx,4;
back2: mov cx,4;
       mov si,offset arr1;
back1: mov al,[si];
       cmp al,[si+1];
       jb next1;
       xchg al,[si+1];
       xchg al,[si];
next1: inc si
       loop back1;
       dec dx;
       jnz back2;
int 3h;
code ends;
end start;
