BGP5PPEL ; IHS/CMI/LAB - IHS gpra print ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
PRINT ;EP
 S BGPGPG=0
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPQUIT=""
 S ^TMP($J,"BGPDEL",0)=0
 I BGPROT="D" G DEL
 S BGPPTYPE="P"
 D AREACP^BGP5DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP5DPEP
 Q:BGPQUIT
 Q:BGPROT="P"
DEL ;create delimited output file
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D ^%ZISC ;close printer device
 K ^TMP($J)
 S BGPPTYPE="D"
 D ^BGP5DPED ;create ^tmp of delimited report
 Q
 ;
