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
      num1       db ?   ;primo numero
      num2       db ?   ;secondo numero 
      prodotto   dw ?   ;risultato
   
.CODE
      mov      ax,@DATA
      mov      ds,ax
      sub      ax,ax
                            
      ;Input num1                      
                            
      mov      ah,01 
      int      21h
      sub      al,48 
      mov      num1,al    
                      
      ;Input num2                      
                            
      mov      ah,01 
      int      21h 
      sub      al,48 
      mov      num2,al    
                      
      ;Programma                                       
                           
      mov      al,num1
      mul      num2
      mov      prodotto,ax
                
      ;Output risultato
      
      add      prodotto,48
      mov      dx,prodotto
      mov      ah,02h
      int      21h
      
      ;Fine
                
      mov  ax,  4c00h
      int  21h      