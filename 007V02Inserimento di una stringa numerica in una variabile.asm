
;*************************************************************
;descrizione  stringa in con numeri

;Autore       Marchetti Matteo
;Classe       3INA
;Versione     1.0
;Data         22/03/2017
;*************************************************************



ORG     100H      
.MODEL  SMALL
.STACK  200H  


.DATA
    stringa1 DB 5 dup('0')
    num DW 0

.CODE
   
    mov ax,@DATA
    mov ds,ax
    sub ax,ax
   
    
    
    mov cl,0h          
    lea di,stringa1   
    mov ah,01h
    lettura: int 21h
    cmp al,0dh
    je fine_lettura 
    sub al,030h
    mov [di],al
    inc di
    inc cl
    cmp cl,4
    je fine_lettura
    jmp lettura
    fine_lettura: mov [di],0h ;FINE LETTURA

    inizio_shift: lea di,stringa1            
    add di,4                                 
    cmp [di],0h
    je fine_shift 
    mov cx,04h
    inizio_loop: dec di
    mov al,[di]
    mov [di],0h
    inc di
    mov [di],al
    dec di
    loop inizio_loop
    jmp inizio_shift                         ;FINE CICLO
    fine_shift: lea di,stringa1
    add di,03h
    mov al,[di]
    mov ah,01h
    mul ah
    add num,ax
    dec di
    mov al,0h
    mov al,[di]
    mov ah,0ah
    mul ah
    add num,ax  
    dec di 
    mov al,0h
    mov al,[di]
    mov ah,064h
    mul ah
    add num,ax 
    dec di
    mov ah,0h
    mov al,0h
    mov al,[di]
    mov bx,03E8h
    mul bx
    add num,ax
    
    

    
     
    
    
    
    
    
    
    
           

    ;Fine programma
    
    ;Inizio parte fissa che serve per chiudere il programma
    fine_stampa:mov ax,4c00h
    int 21h
    ;Fine parte fissa         