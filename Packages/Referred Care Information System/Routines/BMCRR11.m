BMCRR11 ; IHS/PHXAO/TMJ - PROCESS REFERRAL LIST ;    
 ;;4.0;REFERRED CARE INFO SYSTEM;;JAN 09, 2006
 ;IHS/ITSC/FCJ ADDED TEST FOR SR
 ;
 ;
START ;
 S (BMCBT,BMCBTH)=$H,BMCJOB=$J,BMCRCNT=0
 D PROCESS,END
 Q
 ;
PROCESS ;
 S BMCREF=0 F  S BMCREF=$O(^BMCREF(BMCREF)) Q:BMCREF'=+BMCREF  D PROC
 Q
 ;
END ;
 S BMCET=$H
 Q
PROC ;
 K BMCSPEC
 S BMCRREC=^BMCREF(BMCREF,0),DFN=$P(BMCRREC,U,3)
 ;Q:$P(BMCRREC,U,4)="C"  ;Quit if not a CHS Type Referral
 Q:$P(BMCRREC,U,18)'=""  ;Quit if Letter has been received
 Q:$P(BMCRREC,U,4)="N"
 Q:$P($G(^BMCREF(BMCREF,1)),U)'=""  ;QUIT IF SR
 ;Get Referred To Facility IEN Number
 S BMCFAC1=$S($P(BMCRREC,U,7)'="":$P(BMCRREC,U,7),$P(BMCRREC,U,8)'="":$P(BMCRREC,U,8),$P(BMCRREC,U,9)'="":$P(BMCRREC,U,9),1:"")
 Q:'BMCFAC1
 Q:BMCFAC'=""&(BMCFAC'=BMCFAC1)  ;Quit if Selected Fac no match
 Q:$P(BMCRREC,U,29)]""
 ;Q:$P($G(^BMCREF(BMCREF,11)),U,8)=""  ;no actual end date of service commented out per Stan 9/9/96
 ;Q:$P(BMCRREC,U,15)'="C1"
 I $P(BMCRREC,U,15)'="A"&($P(BMCRREC,U,15)'="C1") Q
 I BMCTIME>$$FMDIFF^XLFDT(DT,$P($G(^BMCREF(BMCREF,11)),U,8)) Q
 ;check for medical and/or cost
 ;get sort value
 D @BMCSTYPE
 I BMCSORT="" S BMCSORT="??"
 S ^TMP("BMCRR1",BMCJOB,BMCBTH,"DATA HITS",BMCSORT,BMCREF)="",BMCRCNT=BMCRCNT+1
 Q
F ;
 ;S BMCSORT=$P($G(^AUTTVNDR(BMCFAC1,0)),U)
 S BMCSORT=$$FACREF^BMCRLU(BMCREF)
 Q
T ;
 S BMCSORT=$$FMDIFF^XLFDT(DT,$P($G(^BMCREF(BMCREF,11)),U,8))
 S BMCSORT=BMCSORT\30
 S BMCSORT=$S(BMCSORT>6:1,BMCSORT>3:2,BMCSORT>1:3,1:4)
 Q
