BGP7PARQ ; IHS/CMI/LAB - IHS gpra print ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
PRINT ;EP
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPGPG=0
 S BGPPTYPE="P"
 S ^TMP($J,"BGPDEL",0)=0
 S BGPQUIT=""
 D SETEXCEL^BGP7DP
 I BGPROT="D" G DEL
 D AREACP^BGP7DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP7DP
 Q:BGPQUIT
 Q:BGPROT="P"
DEL ;create delimited output file
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D ^%ZISC ;close printer device
 K ^TMP($J)
 S ^TMP($J,"BGPDEL",0)=0
 S BGPPTYPE="D"
 ;D ^BGP7PDL ;create ^tmp of delimited report
 D AREACP^BGP7DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP7DP
 D SAVEDEL^BGP7PDL   ;D ^BGP7PDL ;create ^tmp of delimited report
 K ^TMP($J)
 Q
 ;
