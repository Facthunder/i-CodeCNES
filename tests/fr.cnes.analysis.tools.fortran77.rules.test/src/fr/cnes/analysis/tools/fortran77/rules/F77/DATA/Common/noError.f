C
C --- Le common 'CONTROL' defini ici contient 4 REAL
C
      BLOCK DATA  ABCD_VAL

      INCLUDE 'F77_ok_Don.CommonIncl.h'

      DATA  A,B,C,D / 1.0, 2.0, 3.0, 4.0 /
      END
C
C --- Main
C
      PROGRAM ESSAI  
      CALL MY_SUB1
      STOP
      END PROGRAM ESSAI
C
C --- Subroutine 
C
      SUBROUTINE MY_SUB1
C
C --- Dans la definition du common nomme, il faut veiller au type des variables et a 
C --- leur ordre de definition : l'utilisation dans un INCLUDE est recommandee
C
      INCLUDE 'F77_ok_Don.CommonIncl.h'
C
      WRITE(*,*) 'C=', C, 'D=', D
      RETURN
      END
