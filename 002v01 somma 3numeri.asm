;***********************************************************
;descrizione  programma che svolge l'addizione tra tre numeri

;Autore       Marchetti Matteo
;Classe       3INA
;Versione     1.0
;Data         30/11/2016
;***********************************************************

ORG         100h       ;origine del programma all'indirizzo 100h

.MODEL      SMALL      ;modello di memoria

.STACK      200h       ;ampiezza dello stack

.DATA
      num1      db 6   ;primo numero
      num2      db 5   ;secondo numero 
      num3      db 8   ;terzo numero
      somma     db ?   ;risultato
   
.CODE
      mov      ax,@DATA
      mov      ds,ax
      sub      ax,ax
      
      mov      al,num1
      add      al,num2
      add      al,num3
      mov      somma,al
      
      mov  ax,  4c00h
      int  21h      