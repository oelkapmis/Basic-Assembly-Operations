
;Example-1
;Write an Intel x86 assembly code that will write 34h value to 0100:1000h and 0100:2000h memory addresses.

;Set data segment
mov ax, 100h
mov ds, ax

;Put 34h value to 0100:1000h and 0100:2000h memory addresses
mov ds:[1000h], 34h
mov ds:[2000h], 34h



;--------------------------------  

;Example-2
;Write an Intel x86 assembly code that will swap the values of CL and DL registers.

;Give some initial values to CL and DL registers    
mov cl, 8
mov dl, 3       

;Swap CL and DL via help of AL register      
mov al, cl
mov cl, dl
mov dl, al
          
                                
                                          
;--------------------------------

;Example-3
;Write an Intel x86 assembly code that will add 98h value written on 0100:0500h memory address
;with 52h value written on 0100:0501h memory address, than write the result to 0100:0502h
;memory address.   

;Put 98h to 0100:0500h and 52h to 0100:501h 
mov ds:[0500h], 98h
mov ds:[0501h], 52h

;Read from adresses
mov ax, ds:[0500h]
mov bx, ds:[0501h]

;Sum the values and write the result to 0100:0502h
add ax, bx
mov ds:[0502h], ax
                                 
                                 
ret