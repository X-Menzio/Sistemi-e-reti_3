;***********************************************************
;descrizione  programma che svolge la moltiplicazione tra due numeri

;Autore       Marchetti Matteo
;Classe       3INA
;Versione     1.0
;Data         30/11/2016
;***********************************************************

ORG         100h       ;origine del programma all'indirizzo 100h

.MODEL      SMALL      ;modello di memoria

.STACK      200h       ;ampiezza dello stack

.DATA
      num1       db 6   ;primo numero
      num2       db 5   ;secondo numero 
      prodotto   dw ?   ;risultato
   
.CODE
      mov      ax,@DATA
      mov      ds,ax
      sub      ax,ax
      
      mov      al,num1
      mul      num2
      mov      prodotto,ax
      
      mov  ax,  4c00h
      int  21h      