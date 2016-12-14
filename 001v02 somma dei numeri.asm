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
       num1      db ?   ;primo numero 
       num2      db ?   ;secondo numero 
       somma     db ?   ;risultato 
     
 .CODE      
       ;Inizio
    
       mov      ax,@DATA 
       mov      ds,ax 
       sub      ax,ax 
            
       ;Input num 1
            
       mov      ah,01
       int      21h
       sub      al,48
       mov      num1,al   
                   
       ;Input num2            
                   
       mov      ah,01
       int      21h
       sub      al,48
       mov      num2,al    
                  
                  
       ;Somma numeri          
                  
       mov      al,num1 
       add      al,num2 
       mov      somma,al 

       ;Output risultato      
             
       add      somma,48
       mov      dl,somma
       mov      ah,02h
       int      21h
                                   
         
       ;Fine
         
       mov  ax,4c00h 
       int  21h       
