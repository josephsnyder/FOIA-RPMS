BGP0PARP ; IHS/CMI/LAB - IHS gpra print ;
 ;;11.0;IHS CLINICAL REPORTING;;JAN 06, 2011;Build 17
 ;
 ;
PRINT ;EP
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPGPG=0
 S BGPQUIT=""
 S BGPIFTR=""
 S ^TMP($J,"BGPDEL",0)=0
 S BGPPTYPE="P"
 D SETEXCEL^BGP0DP
 I BGPROT="D" G DEL
 D AREACP^BGP0DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP0DP
 Q:BGPQUIT
 S BGPIFTR=1
 Q:BGPROT="P"
DEL ;create delimited output file
 S BGPQUIT="",BGPGPG=0,BGPRPT=0,BGPIFTR=""
 D ^%ZISC ;close printer device
 K ^TMP($J)
 ;D ^BGP0PDL ;create ^tmp of delimited report
 S ^TMP($J,"BGPDEL",0)=0
 S BGPPTYPE="D",BGPQUIT=0
 D AREACP^BGP0DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP0DP
 D SAVEDEL^BGP0PDL   ;D ^BGP0PDL ;create ^tmp of delimited report
 S BGPIFTR=1
 K ^TMP($J)
 Q
 ;