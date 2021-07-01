spinner=( 0oooo o0ooo oo0oo ooo0o oooo0 )
spin () {
  while [ 1 ]
  do 
    for i in "${spinner[@]}"
     do
       echo -ne "\r$i MANTAP"
       sleep 0.2
    done
  done
 }
 
 #echo -e "${spin()} MANTAP"
 spin
