spinner=( 0oooo o0ooo oo0oo ooo0o oooo0 )
spin () {
  while [ 1 ]
  do 
    for i in "${spinner[@]}"
     do
       figlet "\r$i"
       sleep 0.2
    done
  done
 }
 spin
 #echo -e "${spin()} MANTAP"
 #echo -e "$var Anyjay"

#spiner() { 
#local i sp n 
#  sp='/-\|' 
 # n=${#sp} 
#  printf ' ' 
 # while sleep 0.1; 
#  do printf "%s\b" 
#  "${sp:i++%n:1}" 
#  done 
 # }
#echo "$spiner"
