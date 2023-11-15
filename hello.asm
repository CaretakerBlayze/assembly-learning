includelib kernel32.lib   
 
; подключаем функции WriteFile и GetStdHandle
extrn WriteFile: PROC
extrn GetStdHandle: PROC
.code
text byte "eeee"    
 
main proc
  sub  rsp, 40   
  mov  rcx, -11  ;
  call GetStdHandle 
  mov  rcx, rax    
  lea  rdx, text   
  mov  r8d, 18      
  xor  r9, r9      
  mov  qword ptr [rsp + 32], 0  
  call WriteFile
  add  rsp, 40
  ret
main endp
end
