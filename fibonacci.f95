     PROGRAM fibonacci
          IMPLICIT NONE
          !variables de control
          integer :: j
          integer :: fn !numero de fibonacci
          !integer :: n !n-esimo numero de fibonacci
          
          !matriz para calcular el iesimo numero de fibonacci
          !integer, dimension(2,2) :: M=0
          !matriz para guardar el iesimo numero de fibonacci
          integer(8), dimension(2,2) :: N, C, P
          DATA N /1,1,1,0/
          !print *, N(1,1), N(1,2), N(2,1), N(2,2)
          
          fn=500
          
          DO j=1,fn
               IF (j==1) THEN
                    P=N
               END IF
               IF (j>=2) THEN
                    C=MATMUL(N,P)
                    P=C
               END IF
          END DO
        
          print *, P(1,1), P(1,2)
          print *, P(2,1), P(2,2)         
            
     END PROGRAM fibonacci

