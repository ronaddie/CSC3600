let tmo=1
let tcount=1
while true
do if [[  ! ( -f "csc8360_wlans_lec.pdf" )  || ( "csc8360_wlans_lec.qb" -nt "csc8360_wlans_lec.pdf" ) ]]
   then    make
       let tmo=1
       let tcount=1
   else let tcount=$tcount+1
       if [[ $tcount -lt 480 ]]
       then let tcount=$tcount+1
       else let tmo=2*$tmo
	    let tcount=1
       fi
   fi
   if [[ $tmo -gt 60 ]]
   then echo "Quitting bmake.sh due to inactivity.
"
        exit
   else sleep $tmo
   fi
done
