.model small   
.org 100h
.data:          
    NAMA DB "NAMA : Rauuf Anugerah Akbar",0AH,0DH,"NIM : 2100018069$",0DH,0AH
    
    GAME DB 0AH,0DH,"TEBAK ANGKA$"     
         
    MSG1 DB " PIKIRKAN ANGKA DARI 1 - 8$",0AH,0DH
    
    MSG2 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 5 $",0DH,0AH,
       
    MSG3 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 7 $",0DH,0AH,   
       
    MSG4 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 3 $" 
     
    MSG5 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 2 $"
    
    MSG6 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 4 $"
    
    MSG7 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 6 $"
    
    MSG8 DB 0AH,0DH,"APAKAH ANGKANYA KURANG DARI 8 $"
    
    MSGs DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 1 $" 
    
    MSGd DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 2 $"  
    
    MSGt DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 3 $" 
    
    MSGe DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 4 $"
    
    MSGl DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 5 $" 
    
    MSGn DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 6 $"
    
    MSGu DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 7 $" 
    
    MSGp DB 0AH,0DH,"ANGKA YANG ADA DIPIKIRANMU 8 $"
    
.code
        MOV AL, 03h
        MOV AH, 00h
        INT 10h   
        
        MOV AH, 09h
        LEA DX, NAMA
        INT 21h 
        
        MOV AH, 09h
        LEA DX, GAME
        INT 21h

  
proses:          
        MOV AH, 09h
        LEA DX, MSG1
        INT 21h 
              
        MOV AH, 09h
        LEA DX, MSG2
        INT 21h 
        
        MOV AH, 01h
        MOV BL, AL
        INT 21h
        
        CMP AL, 'Y'
        JE satulima
        
        CMP AL, 'T'
        JE enamlapa
        
satulima:
        MOV AH, 09h
        LEA DX, MSG4
        INT 21h
        MOV AL, 00h 
        MOV AH, 01h
        MOV BL, AL
        INT 21h
        
        CMP AL, 'Y'
        JE satudua
        
        CMP AL, 'T'
        JE tgaempa
        
satudua:
        MOV AH, 09h
        LEA DX, MSG5
        INT 21h
        MOV AL, 00h
        MOV AH, 01h
        MOV BL, AL
        INT 21h
         
        CMP AL, 'Y'
        JE satu 
        
        CMP AL, 'T'
        JE dua 
         
satu:    
      MOV AH, 09h
      LEA DX, MSGs
      INT 21h
      INT 20h
    
dua:    
      MOV AH, 09h
      LEA DX, MSGd
      INT 21h 
      INT 20h
        
        
tgaempa: 
        MOV AH, 09h
        LEA DX, MSG6
        INT 21h
        MOV AL, 00h
        MOV AH, 01h
        MOV BL, AL
        INT 21h
         
        CMP AL, 'Y'
        JE tiga 
        
        CMP AL, 'T'
        JE empat
        
tiga:
      MOV AH, 09h
      LEA DX, MSGt
      INT 21h
      INT 20h 
      
empat:
      MOV AH, 09h
      LEA DX, MSGe
      INT 21h
      INT 20h        

enamlapa:
        MOV AH, 09h
        LEA DX, MSG3
        INT 21h
        
        MOV AH, 01h
        MOV BL, AL
        INT 21h 
        
        CMP AL, 'Y'
        JE limaenam
        
        CMP AL, 'T'
        JE tujulapa
        
limaenam:
        MOV AH, 09h
        LEA DX, MSG7
        INT 21h
        MOV AL, 00h
        MOV AH, 01h
        MOV BL, AL
        INT 21h
         
        CMP AL, 'Y'
        JE lima 
        
        CMP AL, 'T'
        JE lima 
         
lima:    
      MOV AH, 09h
      LEA DX, MSGl
      INT 21h
      INT 20h
    
enam:    
      MOV AH, 09h
      LEA DX, MSGn
      INT 21h 
      INT 20h
        
        
tujulapa: 
        MOV AH, 09h
        LEA DX, MSG8
        INT 21h
        MOV AL, 00h
        MOV AH, 01h
        MOV BL, AL
        INT 21h
         
        CMP AL, 'Y'
        JE tuju 
        
        CMP AL, 'T'
        JE lapa
        
tuju:
      MOV AH, 09h
      LEA DX, MSGu
      INT 21h
      INT 20h 
      
lapa:
      MOV AH, 09h
      LEA DX, MSGp
      INT 21h
      INT 20h                
   
      