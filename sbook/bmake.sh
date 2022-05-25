let tmo=1
let tcount=1
while true
do if [[  ! ( -f "csc8360sb.pdf" )  || ( "csc8360sb.tex" -nt "csc8360sb.pdf" ) || ( "introduction.tex" -nt "csc8360sb.pdf" ) || ( "history.tex" -nt "csc8360sb.pdf" ) || ( "wifi.tex" -nt "csc8360sb.pdf" ) || ( "fundamentals.tex" -nt "csc8360sb.pdf" ) || ( "wlans.tex" -nt "csc8360sb.pdf" ) || ( "security.tex" -nt "csc8360sb.pdf" ) || ( "design.tex" -nt "csc8360sb.pdf" ) || ( "troubleshooting.tex" -nt "csc8360sb.pdf" ) || ( "cellular.tex" -nt "csc8360sb.pdf" ) || ( "trends.tex" -nt "csc8360sb.pdf" ) ]]
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
