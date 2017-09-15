#!/bin/bash
echo "------------------------------------------"
echo "COM.PRES.LENGTHLINE"
echo "Fichier KO de TU"
echo "------------------------------------------"

code_erreur_nbargs=-128

# Dénition de la variable qui contiendra le code retour (en particulier pour les cas d'erreur avec valeurs negatives)
r_ma_fonction_affine=

# ------------------------------------------------------------------------------------
#    Definition d'une fonction affine ( y = ax + b ) qui doit comporter 3 arguments 
# ------------------------------------------------------------------------------------
ma_fonction_affine () 
{ 
   if [ $# -ne 3 ]
   then
   r_ma_fonction_affine=$code_erreur_nbargs
   else 

#      printf "interface appel fonction ok : p1=%s p2=%s p3=%s\n" $1 $2 $3

      # calcul : y = ax + b
     let y=$1*$2+$3 
#     printf "y=%s\n" $y
      r_ma_fonction_affine=$y
   fi
}


# ------------------------------------------------------------------------------------
#    Definition d'une fonction qui affiche les resultats obtenus 
# ------------------------------------------------------------------------------------
affiche_resultat ()
{
   if [ $# -ne 2 ]
   then
      printf "Erreur grave dans affiche_resultat : nombre d'arguments incorrects\n"
   else 
      p1=$1
      p2=$2
      if [ $p2 -ge 0 ]
      then
         printf "execution de 'ma_fonction_affine' avec chaine de calcul : %s resultat = %s \n" $p1 $2
         else
         printf "erreur d'execution de 'ma_fonction_affine' avec chaine de calcul : %s code retour = %s\n" $p1 $p2
         printf "   ===>Erreur grave dans ma_fonction_affine : nombre d'arguments incorrects<===\n"
      fi
  fi
}

a_trouver=$(($RANDOM % 100))
 
echo "entrez un nombre compris entre 0 et 100"
read i
while [ $i -ne $a_trouver ] 
do
        if [ $i -lt $a_trouver ]
      then
                echo "trop petit, entrez un nombre compris entre 0 et 100"
        else
                echo "trop grand, entrez un nombre compris entre 0 et 100"
        fi
     read i
done
echo "bravo, le nombre etait en effet $a_trouver"


