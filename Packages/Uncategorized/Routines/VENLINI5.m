VENLINI5 ; ; 28-NOV-2006
 ;;2.6;PCC+;;NOV 12, 2007
 K ^UTILITY("DIF",$J) S DIFRDIFI=1 F I=1:1:2 S ^UTILITY("DIF",$J,DIFRDIFI)=$T(IXF+I),DIFRDIFI=DIFRDIFI+1
 Q
IXF ;;
 ;;9000010.16AIP;V PATIENT ED;^AUPNVPED(;0;y;;;;;;n
 ;;
