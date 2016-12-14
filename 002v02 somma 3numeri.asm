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
      num1      db ?   ;primo numero
      num2      db ?   ;secondo numero 
      num3      db ?   ;terzo numero
      somma     db ?   ;risultato
   
.CODE               

      ;Inizio

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
      
      ;Input num3
      
      mov      ah,01
      int      21h
      sub      al,48              
      mov      num3,al              
                    
      ;Programma           
                               
      mov      al,num1
      add      al,num2
      add      al,num3
      mov      somma,al
        
      ;Output risultato
      
       add      somma,48 
       mov      dl,somma 
       mov      ah,02h 
       int      21h 
  
      ;Fine 
        
      mov  ax,  4c00h
      int  21h      