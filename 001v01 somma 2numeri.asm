;***********************************************************
;descrizione  programma che svolge l'addizione tra due numeri

;Autore       Marchetti Matteo
;Classe       3INA
;Data         30/11/2016
;***********************************************************

ORG         100h       ;ogigine del programma all'indirizzo 100h

.MODEL      SMALL      ;modello di memoria

.STACK      200h       ;ampiezza dello stack

.DATA
      num1      db 6   ;primo numero
      num2      db 5   ;secondo numero
      somma     db ?   ;risultato
   
.CODE
      mov      ax,@DATA
      mov      ds,ax
      sub      ax,ax
      
      mov      al,num1
      add      al.num2
      mov      somma,al
      
      mov  ax  4c00h
      int  21h      