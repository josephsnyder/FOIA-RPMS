BWLABLG1 ;IHS/ANMC/MWR - DISPLAY LAB LOG;15-Feb-2003 21:55;PLS
 ;;2.0;WOMEN'S HEALTH;**8**;MAY 16, 1996
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  DISPLAY CODE FOR LAB LOG.  CALLED BY BWLABLG.
 ;
DISPLAY ;EP
 ;---> BWCONF=DISPLAY "CONFIDENTIAL PT INFO" BANNER.
 ;---> BWTITLE=TITLE AT TOP OF DISPLAY HEADER.
 ;---> BWSUBH=CODE TO EXECUTE FOR SUBHEADER (COLUMN TITLES).
 ;---> BWCODE=CODE TO EXECUTE AS 3RD PIECE OF DIR(0) (AFTER DIR READ).
 ;---> BWCRT=1 IF OUTPUT IS TO SCREEN (ALLOWS SELECTIONS TO EDIT).
 ;---> BWPRMT(1,Q)=PROMPTS FOR DIR.
 ;
 N BWTITLE,BWTITLE1,N,Y S:BWB BWCONF=1
 U IO
 D
 .I 'BWB S BWTITLE1="TOTALS" Q
 .I BWC=1 S BWTITLE1="LISTED BY ACCESSION#" Q
 .I BWC=2 S BWTITLE1="LISTED BY PATIENT" Q
 .S BWTITLE="UNKNOWN REPORT"
 S BWTITLE="* * *  WOMEN'S HEALTH: LAB LOG "_BWTITLE1_"  * * *"
 D CENTERT^BWUTL5(.BWTITLE)
 S BWSUBH="SUBHEAD^BWLABLG1"
 D TOPHEAD^BWUTL7
 S (BWPOP,N)=0
NOMATCH ;EP
 ;---> QUIT IF NO RECORDS MATCH.
 I '$D(^TMP("BW",$J,1)) D  Q
 .D HEADER3^BWUTL7
 .W !!?5,"No records match the selected criteria.",!
 .D:BWCRT DIRZ^BWUTL3 W @IOF D ^%ZISC S BWPOP=1
 ;
 D:BWB DISPLAY1
 I BWPOP D
 .W !?5,"Because you have entered ^, the remainder of the individual"
 .W !?5,"procedures will not be displayed.  The totals that follow,"
 .W !?5,"however, are accurate for the selected date range."
 I 'BWB K BWSUBH D HEADER3^BWUTL7
 D TOTALS,END
 Q
 ;
 ;
DISPLAY1 ;EP
 D HEADER3^BWUTL7
 F  S N=$O(^TMP("BW",$J,2,N)) Q:'N!(BWPOP)  D
 .I $Y+6>IOSL D:BWCRT DIRZ^BWUTL3 Q:BWPOP  D
 ..S BWPAGE=BWPAGE+1
 ..D HEADER3^BWUTL7
 .S Y=^TMP("BW",$J,2,N),M=N
 .W !,$$SLDT2^BWUTL5($P(Y,U,3))
 .W ?10,$P(Y,U,4)
 .W ?23,$E($P(Y,U,2),1,18)
 .W ?43,$P(Y,U)
 .W ?53,$E($P(Y,U,8),1,10)
 .W ?65,$E($P(Y,U,9),1,14)
 .W !?10,"Date of ",$E($P(Y,U,5),1,23),": ",$P(Y,U,7)
 .W ?53,"Entered by: ",$E($P(Y,U,10),1,14)
 .W !?10,"Results: "
 .W $S($P(Y,U,6):"RECEIVED, "_$P(Y,U,11),1:"NOT RECEIVED")
 .W ?43,"Res/Diag: ",?53,$E($P(Y,U,12),1,26)
 .W !,BWLINE
 Q
 ;
TOTALS ;EP
 N N,R S (N,R)=0
 I $Y+6>IOSL D:BWCRT DIRZ^BWUTL3 Q:BWPOP  D
 .S BWPAGE=BWPAGE+1 K BWSUBH
 .D HEADER3^BWUTL7
 ;
 F  S N=$O(^TMP("BW",$J,2,N)) Q:'N  D
 .S M=N S:($P(^TMP("BW",$J,2,N),U,12)="NOT ENTERED") R=R+1
 W !?4,"*"
 W ?10,"TOTAL PROCEDURES: ",M,?37,"PROCEDURES WITHOUT RESULTS: ",R
 W ?75,"*"
 W !,BWLINE
 Q
 ;
END ;EP
 W:'BWCRT @IOF
 I BWCRT&('$D(IO("S")))&('BWPOP) D DIRZ^BWUTL3
 D ^%ZISC
 Q
 ;
SUBHEAD ;EP
 ;---> SUB HEADER FOR PROCEDURE BROWSE OUTPUT.
 W !,"DATE",?10,"ACCESSION#",?23,"PATIENT"
 W ?43,$$PNLB^BWUTL5(DUZ(2)),?53,"LOCATION",?65,"PROVIDER",!
 F I=1:1:80 W "="
 Q
