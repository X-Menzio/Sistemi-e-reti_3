;*************************************************************
;descrizione  Input di numeri con doppia cifra

;Autore       Marchetti Matteo
;Classe       3INA
;Versione     1.0
;Data         08/03/2017
;*************************************************************

ORG         100h       ;origine del programma all'indirizzo 100h

.MODEL      SMALL      ;modello di memoria

.STACK      200h       ;ampiezza dello stack

.DATA
      ;num1         db ?   primo numero
      str1         db 5 dup('0')
      
.CODE
      mov      ax,@DATA
      mov      ds,ax
      sub      ax,ax
        
      ;Input num1  
       
             LEA di, str1
             mov ah,01h
  lettura:   int 21h
             cmp al,0dh
             je fine
             mov [di],al
             inc di
             jmp lettura
  fine:      mov [di],0   
             mov ah,02h
             mov dl,0ah
             int 21h
             mov dl,0dh
             int 21h
             lea di, str1
  inizio:     cmp [di],0
             je fine_stampa 
             mov ah,02h
             mov dl,[di]
             int 21h
             inc di
             jmp inizio
 fine_stampa:mov ax,4c00h
             int 21h                   