BGP7PPEL ; IHS/CMI/LAB - IHS gpra print ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
PRINT ;EP
 S BGPGPG=0
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPQUIT=""
 S ^TMP($J,"BGPDEL",0)=0
 I BGPROT="D" G DEL
 S BGPPTYPE="P"
 D AREACP^BGP7DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP7DPEP
 Q:BGPQUIT
 Q:BGPROT="P"
DEL ;create delimited output file
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D ^%ZISC ;close printer device
 K ^TMP($J)
 S BGPPTYPE="D"
 D ^BGP7DPED ;create ^tmp of delimited report
 Q
 ;
