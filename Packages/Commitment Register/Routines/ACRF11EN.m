ACRF11EN ;IHS/OIRM/DSD/AEF - PATCH 11 ENVIRONMENT CHECK ROUTINE [ 09/24/2004  3:19 PM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;**11**;NOV 05, 2001
 ;
EN ;EP -- MAIN ENTRY POINT
 ;
 ;CALL GENERIC EN^ACRFPENV(ACRPCHN,ACRPCHS,.XPDQUIT) ENVIRONMENT
 ;CHECK ROUTINE
 ;
 ;      WHERE:
 ;      ACRPCHN  =  PATCH NAME
 ;      ACRPCHS  =  PREREQUISITE PATCH NUMBERS
 ;      XPDQUIT  =  KIDS INSTALL TERMINATOR VARIABLE OUTPUT
 ;                  1 = QUIT
 ;
 K XPDQUIT
 ;
 S ACRPCHN="ACR*2.1*11"
 S ACRPCHS="1,2,3,4,5,6,7,8"          ;CHANGE AS NEEDED
 ;EXCEPTION TO SKIP 9 AND 10         9/24/2004
 ;
 D EN^ACRFPENV(ACRPCHN,ACRPCHS,.XPDQUIT)
 ;
 Q