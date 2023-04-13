     A*%%TS  SD  20150513  093803  DALTENHOFE  REL-V6R1M0  5761-WDS       
     A*%%EC                                                               
     A                                      DSPSIZ(24 80 *DS3)            
     A                                      CHGINPDFT                     
     A                                      INDARA                        
     A                                      CF03(03 'END OF PROGRAM')     
     A                                      PRINT(*LIBL/QSYSPRT)          
     A*------------------------------------------------------------------*
.....A*N01N02N03T.Name++++++RLen++TDpBLinPosFunctions+++++++++++++++++++++++++++
     A          R INRD190IC
     A*%%TS  SD  20120601  113112  DALTENHOFE  REL-V6R1M0  5761-WDS       
     A                                      CF12                          
     A*                                     OVERLAY                       
     A                                  1  2'INPR190IC'                   
     A                                      COLOR(BLU)                    
     A                                  1 16'Production Estimate For'     
     A                                      DSPATR(HI)                    
     A            S2DATE          L  O  1 40DATFMT(*USA)                  
     A                                      DSPATR(RI)                    
     A            S2DAY         10A  O  1 51                              
     A                                  1 72DATE                 
     A                                      EDTCDE(Y)            
     A                                      COLOR(BLU)           
     A*                                                          
DA01 A            S2DIRD         9A  O  2  2COLOR(YLW)           
     A                                  2 16'Assign Crews'       
     A                                      DSPATR(RI)           
     A            S2GRPD        20A  O  2 32COLOR(YLW)           
     A                                  2 72TIME                 
     A                                      COLOR(BLU)           
     A*                                                          
     A            S2CO           3S 0H                           
     A            S2RAN          3Y 0H                           
     A            S2VAR#         3S 0H                           
     A            S2TRIAL        1A  H                           
     A            S2TYPE         8A  O  3  7                     
     A                                  3 16'Block'              
     A                                      DSPATR(UL)
     A                                      DSPATR(HI)           
     A            S2VARX         3A  O  3 22                     
     A            S2BLK          3Y 0O  3 26EDTCDE(3)                  
     A            S2BLKSUB       1A  O  3 30                           
     A            S2VARD        20A  O  3 32                           
     A            S2RAND        19A  O  3 53                           
     A            S2TRIALM      11A  O  4 22COLOR(RED)                 
     A*                                                                
     A*                                 4 59'DAY#:'                    
     A*                                     DSPATR(HI)                 
     A*           S2DAY#         3Y 0O  4 65                           
     A*                                 4 69'INS#:'                    
     A*                                     DSPATR(HI)                 
     A*           S2INS#         3Y 0O  4 75                           
     A*                                                                
     A                                  6  2' Crew   '                 
     A                                      DSPATR(UL)                 
     A                                      DSPATR(HI)                 
     A                                  6 12'#Box'                     
     A                                      DSPATR(UL)                 
     A                                      DSPATR(HI)                 
     A                                  6 18' X%'                      
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A                                  6 22'XX%'                
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A                                  6 26' Y%'                
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A                                  6 30' Z%'                
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A                                  6 34'ZZ%'                
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A                                  6 38'YY%'                
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A                                  6 42'Notes/Comments     '
     A                                  6 42'givhhhh-
     A                                      DSPATR(UL)           
     A                                      DSPATR(HI)           
     A*                                 6 63'?'                      
     A*                                     DSPATR(HI)               
     A*                                     DSPATR(UL)               
     A*                                                              
     A          R INSD190IC                 SFL                      
     A*%%TS  SD  20120613  103351  DALTENHOFE  REL-V6R1M0  5761-WDS  
     A            R2BRRN         4S 0H      TEXT('SFL RECORD NUMBER')
     A            R2UPD          1A  H      TEXT('EXISTED ON ENTRY') 
     A            S2CREW         2A  O  7  2DSPATR(UL)               
     A            S2CRW#         3Y 0O  7  5DSPATR(UL)               
     A            S2CRWT         1A  O  7  9DSPATR(UL)               
     A                                      COLOR(YLW)               
     A            S2BOXE         5Y 0O  7 12EDTCDE(Z)                
     A                                      DSPATR(UL)               
     A            S2PCT1         3Y 0O  7 18EDTCDE(Z)                
     A                                      DSPATR(UL)               
     A            S2PCT2         3Y 0O  7 22EDTCDE(Z)                
     A                                      DSPATR(UL)               
     A            S2PCT3         3Y 0O  7 26EDTCDE(Z)                
     A                                      DSPATR(UL)               
     A            S2PCT4         3Y 0O  7 30EDTCDE(Z)        
     A                                      DSPATR(UL)       
     A            S2PCT5         3Y 0O  7 34EDTCDE(Z)        
     A                                      DSPATR(UL)       
     A            S2PCT6         3Y 0O  7 38EDTCDE(Z)        
     A                                      DSPATR(UL)       
     A            S2NOTE        20A  O  7 42DSPATR(UL)       
     A*           SEL2           1A  O  7 63DSPATR(UL)       
     A            S2MSG         15A  O  7 65                 
     A          R INCD190IC                 SFLCTL(INSD190IC)
     A                                      CHGINPDFT        
     A                                      SFLSIZ(0012)     
     A                                      SFLPAG(0012)     
     A                                      BLINK            
     A                                      CF12             
     A                                      OVERLAY          
     A N32                                  SFLDSP           
     A N32                                  SFLDSPCTL        
     A  32                                  SFLDLT           
     A  92                                  SFLEND           
     A*N02                                  SFLINZ                              
     A                                 20  9'*'                                 
     A                                      COLOR(YLW)                          
     A                                 20 11'= Contract Crew'                   
     A*                                21 63'D'                                 
     A*                                     COLOR(TRQ)                          
     A*                                21 65'= Delete'                          
     A                                      DSPATR(HI)                          
     A                                 23  1'                                  -
     A                                                                         -
     A                                                 '                        
     A                                      DSPATR(UL)                          
     A                                 24 24'Press'                             
     A                                 24 30'<ENTER>'                           
     A                                      DSPATR(UL)                          
     A                                      COLOR(BLU)                          
     A                                 24 38'to Process'                        
     A                                 24 63'F12=Return'                        