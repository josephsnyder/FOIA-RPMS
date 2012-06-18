BWBRDUP ;IHS/ANMC/MWR - BROWSE DUPLICATE PROCEDURES;15-Feb-2003 21:46;PLS
 ;;2.0;WOMEN'S HEALTH;**8**;MAY 16, 1996
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  CALLED BY OPTION: "BW BROWSE PROCEDURES DUPLICATE" TO IDENTIFY,
 ;;  LIST AND BROWSE POSSIBLE DUPLICATE PROCEDURES.
 ;
 ;---> USE ^BWBRPCD ROUTINES FOR DISPLAY (NODES 1 & 2 IN ^TMP GLOBAL).
 ;
 D SETVARS
 D TITLE^BWUTL5("BROWSE PROCEDURES FOR POSSIBLE DUPLICATES")
 D DEVICE G:BWPOP EXIT
 D SORT
 D COPYGBL^BWBRPCD
 D DISPLAY^BWBRPCD1(BWTITLE,BWHEADER,BWCODE)
 ;
EXIT ;EP
 D KILLALL^BWUTL8
 Q
 ;
SETVARS ;EP
 ;---> SET REQUIRED VARIABLES.
 D SETVARS^BWUTL5 S BWPOP=0
 S BWTITLE="* * *  DUPLICATE PROCEDURES LISTED BY PATIENT  * * *"
 ;---> SET CODE EXCECUTED BY DIR PROMPT.
 S BWCODE="D EDIT^BWBRPCD1,SORT^BWBRDUP,COPYGBL^BWBRPCD"
 ;---> SET LINE LABEL IN ^BWUTL7 TO CALL AS HEADER.
 S BWHEADER="HEADER6"
 Q
 ;
SORT ;EP
 ;---> SORT AND STORE ARRAY IN ^TMP("BW",$J
 K ^TMP("BW",$J) N BWDFN,BWIEN,BWPCD,BWPCDS,N,M,P,Y
 S BWDFN=0
 F  S BWDFN=$O(^BWPCD("C",BWDFN)) Q:'BWDFN  D
 .;
 .;---> GATHER ALL PROCEDURES FOR THIS PATIENT INTO BWPCDS ARRAY.
 .S BWIEN=0 K BWPCDS
 .F  S BWIEN=$O(^BWPCD("C",BWDFN,BWIEN)) Q:'BWIEN  D
 ..;---> SET Y=THE ZERO NODE FOR THIS PROCEDURE.
 ..S Y=^BWPCD(BWIEN,0)
 ..;---> QUIT IF THIS PROCEDURE HAS A RESULT OF "ERROR/DISREGARD".
 ..Q:$P(Y,U,5)=8
 ..;---> GET DATE.
 ..S BWPCD=+$P(Y,U,4),BWDATE=+$P($P(Y,U,12),".")
 ..; Must have a valid procedure. WiseWoman entries lack a procedure.
 ..Q:'BWPCD
 ..S BWPCDS(BWDFN,BWDATE,BWPCD,BWIEN)=""
 .;
 .;---> NOW CHECK BWPCDS ARRAY FOR DUPLICATES.
 .S N=0
 .F  S N=$O(BWPCDS(BWDFN,N)) Q:'N  D
 ..S M=0
 ..F  S M=$O(BWPCDS(BWDFN,N,M)) Q:'M  D
 ...S P=0
 ...F I=0:1 S P=$O(BWPCDS(BWDFN,N,M,P)) Q:'P
 ...Q:I'>1
 ...S P=0
 ...F  S P=$O(BWPCDS(BWDFN,N,M,P)) Q:'P  D
 ....S Y=^BWPCD(P,0) D STORE^BWBRPCD(2,P,Y)
 Q
 ;
DEQUEUE ;EP
 ;---> FOR TASKMAN QUEUE OF PRINTOUT.
 D SETVARS,SORT,COPYGBL^BWBRPCD
 D DISPLAY^BWBRPCD1(BWTITLE,BWHEADER,BWCODE)
 D EXIT
 Q
 ;
DEVICE ;EP
 ;---> GET DEVICE AND POSSIBLY QUEUE TO TASKMAN.
 S ZTRTN="DEQUEUE^BWBRDUP"
 F BWSV="HEADER" D
 .I $D(@("BW"_BWSV)) S ZTSAVE("BW"_BWSV)=""
 D ZIS^BWUTL2(.BWPOP,1,"HOME")
 Q
